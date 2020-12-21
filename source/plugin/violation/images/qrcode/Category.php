<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/4/15 0015
 * Time: 下午 10:08
 */

namespace app\common\model;
use think\Model;
use think\model\concern\SoftDelete;

class Category extends Model
{
    //开启自动写入时间搓
    protected $autoWriteTimestamp = true;

    use SoftDelete;
    protected $deleteTime = 'delete_time';

    protected $defaultSoftDelete = 0;

    //添加数据
    public function add($data){

        $data['status'] = 1;
        self::create($data);
        return true;
    }

    //获取分类列表
    public function getFirstCategory($id = 0,$isPage = false){

        if($isPage){
            return self::where('parent_id',$id)->paginate(15);
        }
      //  return self::where('parent_id',$id)->order('listorder','desc')->select();
        return self::where('parent_id',$id)->order('listorder','asc')->select();

    }
    //获取所有层级的分类数据
    public function getTreeCategory(){

        $data = self::select()->toArray();
        return getTree($data);

    }

    //更新状态
    public function updateStatus($id,$status){

        $rows = self::where('id',$id)->update(['status'=>$status]);
        if($rows!==false){
            return true;
        }
        return false;
    }

    //删除数据
    public function softDelById($id){

        if(is_numeric($id)){
            $rows = self::where("id",$id)->useSoftDelete('delete_time',time())->delete();
            return $rows;
        }

    }

    //修改排序
    public function setListOrder($id,$val){
        $rows = self::where('id',$id)->update(['listorder'=>$val]);
        if($rows!=false){
            return true;
        }
        return false;
    }

    //根据ID获取数据
    public function getCategoryById($id) {
        $arr = [];
        if($id) {
      //  return self::where('id',$id)->find()->toArray();
            $arr = self::where('id',$id)->find();
            if(is_array($arr))
                $arr = $arr->toArray();
            
            return  $arr ;
        }

	   
    }

	public function getParentById($colId){
		  return self::where('id',$colId)->find()->toArray();
	}

    //更新分类
    public function updateCategory($data) {

        return self::update($data);
    }

    //获取层级父类
    public function getParentCategory($data){
        static $arrPar= [];
            $i = 0;

            while (is_array($data)) {
                if($data['parent_id']==0){
                    break;
                }
                $data =  self::where('id',$data['parent_id'])->find()->toArray();
                $arrPar [$i] = $data;
                $i++;


             }
            krsort($arrPar);//按键名降序排序1, 0
            return $arrPar;
    }

    //根据多个主键ID来获取数据
    public function getCategoryByIds($ids ){
        return self::where(['parent_id'=>$ids])->order('listorder','desc')->select();
    }

    //查找三级分类菜单
    public function ThreeLevelMenu(){

        //查找各父级分类
        $Categorys =  (new Category())->getFirstCategory()->toArray();

        foreach ($Categorys as $category){
            $ids[] = $category['id'] ;
        }

        //查找各父级分类的所有儿子类
        $sonCate = (new Category())->getCategoryByIds($ids)->toArray();

        foreach ($sonCate as $val){
            $sonCateArr[$val['parent_id']][] = [
                'id'=>$val['id'],
                'name'=>$val['name']
            ];

            $grandIds[] = $val['id'];
        }

        //查找各儿子分类的所有孙子类
        $grandCate = (new Category())->getCategoryByIds($grandIds)->toArray();


        foreach ($grandCate as $item) {

            $grandCateArr[$item['parent_id']][] = [
                'id'=>$item['id'],
                'name'=>$item['name']
            ];
        }

        //从孙子分类倒过来拼接数据
        foreach ($sonCateArr as &$vv) {
            foreach ($vv as $k => &$v) {
                $v['grandson'] = empty($grandCateArr[$v['id']]) ? '' : $grandCateArr[$v['id']];

            }
        }

        //从父级分类拼接
        foreach ($Categorys as $category) {
            $allCategorys[] = ['name'=>$category['name'],'id'=>$category['id'],'son'=>empty($sonCateArr[$category['id']])?'':$sonCateArr[$category['id']]];
        }


//        echo '<pre>';
//        print_r($allCategorys);
//        exit;




        return $allCategorys;
    }




}