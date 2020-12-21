<?php
namespace app\index\controller;
use app\common\model\Recommend;
use think\App;
use think\Controller;
use app\common\model\Category;
use app\common\model\News;
use Request;

class Index extends  Controller
{
    private $ThreeMenu;
    public function __construct(App $app = null)
    {


		
		if (Request::isMobile()) 
			$this->ThreeMenu =  (new Category())->getFirstCategory()->toArray();
		else
		//栏目	
        $this->ThreeMenu = (new Category())->ThreeLevelMenu();
			
		
        parent::__construct($app);
    }

    //首页
    public function index(){

        //幻灯片
        $headeSilde = (new Recommend())->getALL(1,8)->toArray();
        $footerSilde = (new Recommend())->getALL(2,8)->toArray();
		
		//校园风彩
        $stuSilde = (new Recommend())->getALL(3,8)->toArray();

        //公告
        $NoticNews = (new News())->getNewsByColId(5,true,12)->toArray();

        //党建工作
        $PartyNews = (new News())->getNewsByColId(2,true,8)->toArray();

        //校园新闻
		if (Request::isMobile()) 
       		$schoolNews = (new News())->getNewsByColId(6,true,8)->toArray();
		else{
			$schoolNews = (new News())->getNewsLimitByColId(6,2,true);
			$schoolNews[0]['content'] = preg_replace("/<\/?([a-zA-Z]+)[^>]*>/","",$schoolNews[0]['content']);
			$schoolNews[1]['content'] = preg_replace("/<\/?([a-zA-Z]+)[^>]*>/","",$schoolNews[1]['content']);
			list($y,$m,$d) = explode('-',$schoolNews[0]['create_time']);
			$schoolNews[0]['create_time'] = [$m,$d];
			list($y1,$m1,$d1) = explode('-',$schoolNews[1]['create_time']);
			$schoolNews[1]['create_time'] = [$m1,$d1];
		}

        //一周工作
        $weekNews = (new News())->getNewsByColId(8,true,8)->toArray();

        
//        echo'<pre>';
//        print_r($stuSilde);
//        exit;
        $this->assign(['menu'=>$this->ThreeMenu,
            'headeSilde'=>$headeSilde,
            'footerSilde'=>$footerSilde,
            'stuSilde'=>$stuSilde,
            'noticnews' => $NoticNews,
            'schoolNews'=>$schoolNews,
            'partyNews' => $PartyNews,
            'weekNews' => $weekNews,
            'parentName'=>''
        ]);

       return $this->fetch();
    }
	
    //内容页
    public function content(){

		
        $id = Request::param('id');
        $parent = '';
        if(is_numeric($id) && $id>0 ){


            $content = (new News())->getNewsById($id);


            $colData = $this->getColPos($content['col_id']);

            //推荐最新栏目新闻
            $colNews = (new News())->getNewsLimitByColId($content['col_id'],5);

            //上一篇
            $precontent = (new News())->getNewsById($id,'<',$content['col_id']);
            //下一篇
            $nextcontent = (new News())->getNewsById($id,'>',$content['col_id']);
				
			//栏目导航图
			$img_nav = $this->navImg($colData['colName']);	
			
            $this->assign(['content'=>$content,
                'colData'=>$colData,
                'parent'=>$colData['parent'],//递归栏目位置
                'colName'=>$colData['colName'],//栏目名
				'colId'=>$content['col_id'],//栏目ID
                'colNews'=>$colNews,
                'menu'=>$this->ThreeMenu,
                'parentName'=>$colData['parentName'],//父类栏目用于hover_
                'precontent'=>$precontent,
                'nextcontent'=>$nextcontent,
				'img_nav'=>$img_nav
            ]);
            return $this->fetch();
        }

    }
    public function artList() {
        $colId = Request::param('colid');
		$sameCate = $twoCate = [];
        $colData = $this->getColPos($colId); 
		
		if (Request::isMobile()) {
			
				//获取儿子栏目
				$this->ThreeMenu =  (new Category())->getFirstCategory($colId)->toArray();
			}else{
				//获取同级别的栏目
					
					if($colData['parent_id']!=0){
							//查找三级的同级
							$sameCate=  (new Category())->getFirstCategory($colData['parent_id'])->toArray();
							
							$parentCate = (new Category())->getCategoryById($colData['parent_id']);
							if($parentCate['parent_id']!=0)
								//查找二级的同级
								$twoCate = (new Category())->getFirstCategory($parentCate['parent_id'])->toArray();
					}	
				}
		
		
        


        $lists = (new News())->getNewsByColId($colId,true);
        $page = $lists->render();
		
		
		//栏目导航图
		$img_nav = $this->navImg($colData['colName']);
		
		
        $this->assign(['page'=>$page,
            'lists'=>$lists,
            'menu'=>$this->ThreeMenu,
            'parentName'=>$colData['parentName'],//父类栏目用于hover_
			'parentId'=>$colData['parent_id'],//父类栏目ID
            'colName'=>$colData['colName'],//栏目名
            'parent'=>$colData['parent'],//递归栏目位置
            'twoName'=>$colData['twoName'],//2级栏目名
			'colId' =>$colId,
            'sameCate'=>$sameCate,
            'twoCate'=>$twoCate,
			'img_nav'=>$img_nav
        ]);

        if($colData['type_template']=='artlist')

            return $this->fetch();

            //模板类型　
            return $this->fetch($colData['type_template']);

    }

    public function search() {
       $str =  Request::param('search_text');
        if(Request::isGet()&&$str){
            $arrSearch = (new News())->search($str);
            $page = $arrSearch->render();
            $this->assign([
                'page'=>$page,
                'lists'=>$arrSearch,
                'menu'=>$this->ThreeMenu,
                'parentName'=>'数据查询',
                'colName'=>'查询列表',
                'parent'=>'数据查询',
				'img_nav'=>'<a href="#" target="_blank"><img src="/static/home/images/listheader.jpg" ></a>',
				'colId'=>0
            ]);

        }
        return $this->fetch('art_list');
    }

    //获取栏目位置
    public function getColPos($colId){
        $parent = $parentName = $twoName = '';
        //栏目ID
        $colData =  (new Category())->getCategoryById($colId);
//          echo '<pre>'; print_r( $colData );

        if ($colData['parent_id']!=0) {
            //获取父类
            $str = '';
            $parentCate = (new Category())->getParentCategory($colData);
            $i =0;
            foreach ($parentCate as  $v) {
                $str = ' > ';
                $parent .= '<a href="/index/index/artList/colid/'.$v['id'].'.html">'.$v['name'].'</a>'.$str;
                if($i==0)//顶级栏目
                    $parentName = $v['name'];
                elseif ($i==1)//二级栏目
                    $twoName = $v['name'];
                $i++;
            }

        }else{
            $parentName = $colData['name'];
        }
        $parent.=$colData['name'];
        return ['parentName'=>$parentName,'twoName'=>$twoName,'colName'=>$colData['name'],'parent_id'=>$colData['parent_id'],'parent'=>$parent,'type_template'=>$colData['template']];
    }
	
	//获取导航所在的图片位置
	public function navImg($column){
		
		switch ($column){
						case '党建工作':;	
						case '党办':
									$img_nav = '<a href="#" target="_blank"><img src="/static/home/images/PartyBuilding.jpg" ></a>';
							 break;
							 
						case '学校介绍':;		
						case '学校荣誉':;
						case '学校地图':;
						case '师资力量':;
						case '学校简介':;	
						case '美丽校园':;	
						case '校园广场':;	
						case '教学楼':;	
						case '科技楼':;	
						case '数字化教室':;	
						case '心理咨询室':;	
						case '图书官':;	
						case '体艺馆':;	
						case '田径场':;	
						case '学生宿舍':;	
						case '食堂':;	
						case '设施设备':;	
						case '软福利设施':$img_nav = '<a href="#" target="_blank"><img src="/static/home/images/SchoolIntroduction.jpg" ></a>';
							 break;
							 
						
							 
						case '学校部门':;
						case '综治办':;
						case '工会':;
						case '总务处':;
						case '团委｜大队委':;
						case '政工处':;
						case '教务处':;
						case '教科室':;
						case '校办':;
						case '政教处':;
						case '教师培训':;
						case '业务竞赛':;
						case '课题研究':;
						case '青蓝工程':;
						case '备课组建设':;
						case '名师课堂':	$img_nav = '<a href="#" target="_blank"><img src="/static/home/images/SchoolDepartments.jpg" ></a>';
						   break;
						   
						case '校园新闻':	$img_nav = '<a href="#" target="_blank"><img src="/static/home/images/CampusNews.jpg" ></a>';
						   break;
						   
						case '通知通告':	$img_nav = '<a href="#" target="_blank"><img src="/static/home/images/Notice.jpg" ></a>';
							break;   
							
					    case '校历周历':	$img_nav = '<a href="#" target="_blank"><img src="/static/home/images/Aweek.jpg" ></a>';
					       break;
						   
						  
						case '专题专栏':; 
						case '招生专栏':;
						case '招聘专栏':;
						case '文明创建':;
						case '招生动态':;
						case '应聘报名表':;
						case '招聘动态':$img_nav = '<a href="#" target="_blank"><img src="/static/home/images/SpecialColumn.jpg" ></a>';
						   break;
						
						case '校园之星':;
						case '团队干部':;
						case '学生荣誉':;
						case '礼义之星':;
						case '美德之星':;
						case '学习之星':;
						case '勤奋之星':;
						case '美德之星':;
						case '社团之星':;
						case '服务之星':;
						case '志愿之星':;
						case '环保之星':;
						case '体育之星':;
						case '艺术之星':;
						case '干部之星':;
						case '团委｜大队委干部':;
						case '学生会干部':;
						case '学生活动':; 
						case '教职工活动':; 
						case '师生风采':
									$img_nav = '<a href="#" target="_blank"><img src="/static/home/images/StudentsWorks.jpg" ></a>';
							
						//case '优秀学生':$img_nav = '<a href="#" target="_blank"><img src="/static/home/images/imglist.jpg" ></a>';
						break;
						
						default:	$img_nav =  '<a href="#" target="_blank"><img src="/static/home/images/listheader.jpg" ></a>';
						  
					}
					return $img_nav;
		
	}
}
