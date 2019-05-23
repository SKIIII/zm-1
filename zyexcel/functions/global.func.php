<?php


	
/**
 * 数据导入到Excel中
 * @param array $data_array 要导出的二维数组
 * @param string $excel_file_name 导出的excel文件的名称
 * @param array $filed_cn_array 数据字段翻译，作为表头标题
 */
function excel_import($filename,$encode='utf-8'){
		require_once(dirname(dirname(__FILE__)).'\classes\PHPExcel.class.php');


		   $objReader = PHPExcel_IOFactory::createReader('Excel5');
          $objReader->setReadDataOnly(true);
          $objPHPExcel = $objReader->load($filename);
          $objWorksheet = $objPHPExcel->getActiveSheet();
		  $highestRow = $objWorksheet->getHighestRow(); 
		  $highestColumn = $objWorksheet->getHighestColumn(); 
		  $highestColumnIndex = PHPExcel_Cell::columnIndexFromString($highestColumn); 
		  $excelData = array(); 
		  for ($row = 2; $row <= $highestRow; $row++) { 
		  for ($col = 0; $col < $highestColumnIndex; $col++) { 
                 $excelData[$row][] =(string)$objWorksheet->getCellByColumnAndRow($col, $row)->getValue();
           } 
         } 
        return $excelData;
    }    


/**
 * 数据导出到Excel中
 * @param array $data_array 要导出的二维数组
 * @param string $excel_file_name 导出的excel文件的名称
 * @param array $filed_cn_array 数据字段翻译，作为表头标题
 */
function export_to_excel($data_array,$excel_file_name,$filed_cn_array){
	
	//数据为空或者文件没有命名的，直接罢工
	if(empty($data_array) || empty($excel_file_name)){
		return false;
		//die('$data_array或者$excel_file_name为空。');
	}
	
	//统计有多少条数据
	$count_field=count($data_array);
	
	//返回所有的字段
	$keys_data_array=array_keys($data_array[0]);

	//统计有多少个字段
	$count_keys=count($keys_data_array);

	//excel表头的标记
	$excle_no=array(
		'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z',
		'AA','AB','AC','AD','AE','AF','AG','AH','AI','AJ','AK','AL','AM','AN','AO','AP','AQ','AR','AS','AT','AU','AV','AW','AX','AY','AZ',
		'BA','BB','BC','BD','BE','BF','BG','BH','BI','BJ','BK','BL','BM','BN','BO','BP','BQ','BR','BS','BT','BU','BV','BW','BX','BY','BZ',
		'CA','CB','CC','CD','CE','CF','CG','CH','CI','CJ','CK','CL','CM','CN','CO','CP','CQ','CR','CS','CT','CU','CV','CW','CX','CY','CZ',
		'DA','DB','DC','DD','DE','DF','DG','DH','DI','DJ','DK','DL','DM','DN','DO','DP','DQ','DR','DS','DT','DU','DV','DW','DX','DY','DZ',
		'EA','EB','EC','Ed','EE','EF','EG','EH','EI','EJ','EK','EL','EM','EN','EO','EP','EQ','ER','ES','ET','EU','EV','EW','EX','EY','EZ',
		'FA','FB','FC','Fd','EF','FF','FG','FH','FI','FJ','FK','FL','FM','FN','FO','FP','FQ','FR','FS','FT','FU','FV','FW','FX','FY','FZ'
	);
	
	//包含PHPExcel类文件
	//require_once('zywl/classes/PHPExcel.class.php');
	require_once(dirname(dirname(__FILE__)).'\classes\PHPExcel.class.php');
	
	$objPHPExcel = new PHPExcel();
	$objPHPExcel->getProperties()->setCreator("台州市卓远网络科技有限公司")
				 ->setLastModifiedBy("yldets")
				 ->setTitle("台州市卓远网络科技有限公司限公司数据导出")
				 ->setSubject("台州市卓远网络科技有限公司")
				 ->setDescription("使用Excel 2007或更高或兼容版本打开")
				 ->setKeywords("台州市卓远网络科技有限公司")
				 ->setCategory("台州市卓远网络科技有限公司");
				 
	//设置宽度
	$objPHPExcel->setActiveSheetIndex(0);
	
	for($i=0;$i<$count_keys;$i++){
		$objPHPExcel->getActiveSheet()->getColumnDimension('"'.$excle_no[$i].'"')->setWidth(24);
	}

	//设置表头
	for($i=0;$i<$count_keys;$i++){
		$indexy=$excle_no[$i].'1';
		if(empty($filed_cn_array[$keys_data_array[$i]])){
			$file_name_yes=$keys_data_array[$i];
		}else{
			$file_name_yes=$filed_cn_array[$keys_data_array[$i]];
		}
		
		$objPHPExcel->setActiveSheetIndex(0)->setCellValue($indexy,$file_name_yes);
	}
	
	//设置值
	foreach($data_array as $key=>$value){			
		$j = $key+2;
		for($i=0;$i<$count_keys;$i++){
			$indexyy=$excle_no[$i].$j;
			$objPHPExcel->setActiveSheetIndex(0)->setCellValue($indexyy, $value[$keys_data_array[$i]]);
		}	
	}	
	
	$objPHPExcel->getActiveSheet()->setTitle($excel_file_name);
	$objPHPExcel->setActiveSheetIndex(0);
	header("Content-type: text/csv");
	header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=UTF-8');
	//$filename = '包裹统计信息.xls';
	$filename = $excel_file_name.'_'.date("Y-m-d", time()).'_'.time().'.xls';
	header('Content-Disposition: attachment;filename="'.$filename.'"');
	//header('Cache-Control: max-age=0');
	$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
	$objWriter->save('php://output');
}



?>