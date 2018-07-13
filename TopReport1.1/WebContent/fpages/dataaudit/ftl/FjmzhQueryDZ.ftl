<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="��ַ��Ϣ">
<@CommonQueryMacro.CommonQuery id="FjmzhQueryDZ" init="true" submitMode="all" navigate="false">
<table width="100%">
	<tr>
		<td>
			<@CommonQueryMacro.DataTable id="datatable1" paginationbar="btBack"  fieldStr="select[40],diAccID,slegalAddressType,sCountryCode,sAddressFixEN_CityEN,dStyle,operation"  width="100%" hasFrame="true" height="300" readonly="true"/>
		</td>
	</tr>
	<tr>
		<td>
			<@CommonQueryMacro.FloatWindow id="signWindow" label="" width="800" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
      			<div align="center">
      				<@CommonQueryMacro.Group id="group1" label="��ַ��Ϣ����"
        			  fieldStr="diAccID,slegalAddressType,sCountryCode,sAddressEN_AddressFreeEN,sAddressFixEN_CityEN,sAddressFixEN_Street,sAddressFixEN_BuildingIden,sAddressFixEN_SuiteIdentifier,sAddressFixEN_FloorIdentifier,sAddressFixEN_DistrictName,sAddressFixEN_POB,sAddressFixEN_PostCode,sAddressFixEN_CountrySubentity,sAddressCN_sAddressFreeCN,sAddressFixCN_Province,sAddressFixCN_CityCN,sAddressFixCN_DistrictName,sAddressFixCN_PostCode,dStyle" colNm=4/>
        			 </br>
      				<@CommonQueryMacro.Button id= "btSave"/>
      			</div>
     		 </@CommonQueryMacro.FloatWindow>
		</td>
	</tr>
	<tr>
		<td>
			<@CommonQueryMacro.FloatWindow id="signWindowEdit" label="" width="800" resize="true" defaultZoom="normal" minimize="false" maximize="false" closure="true" float="true" exclusive="true" position="center" show="false" >
      			<div align="center">
      				<@CommonQueryMacro.Group id="group1" label="��ַ��Ϣ�޸�"
        			  fieldStr="diAccID,slegalAddressType,sCountryCode,sAddressEN_AddressFreeEN,sAddressFixEN_CityEN,sAddressFixEN_Street,sAddressFixEN_BuildingIden,sAddressFixEN_SuiteIdentifier,sAddressFixEN_FloorIdentifier,sAddressFixEN_DistrictName,sAddressFixEN_POB,sAddressFixEN_PostCode,sAddressFixEN_CountrySubentity,sAddressCN_sAddressFreeCN,sAddressFixCN_Province,sAddressFixCN_CityCN,sAddressFixCN_DistrictName,sAddressFixCN_PostCode,dStyle" colNm=4/>
        			 </br>
      				<@CommonQueryMacro.Button id= "btSaveEdit"/>
      			</div>
     		 </@CommonQueryMacro.FloatWindow>
		</td>
	</tr>
	
</table>
</@CommonQueryMacro.CommonQuery>

<script language="javascript">


//��λһ�м�¼
	function locate(diAccID) {
		var record = FjmzhQueryDZ_dataset.find(["diAccID"],[diAccID]);
		if(record) {
			FjmzhQueryDZ_dataset.setRecord(record);
		}
	}
	//ϵͳˢ�µ�Ԫ��
	function datatable1_operation_onRefresh(cell,value,record) {
		if(record) {
			var diAccID = record.getValue("diAccID");
			cell.innerHTML="<center><a href=\"JavaScript:showDetailDZ('"+diAccID+"')\">�޸�</a></center>";
		}else {//�������ڼ�¼ʱ
		 cell.innerHTML="&nbsp;";
		}
			
	}


var name = null;
window.onload=function(){
	var diAccID = GetQueryString("diAccID");
	if(diAccID!=null) 
	{ 
		name = decodeURIComponent(diAccID);
	}
}

function GetQueryString(name) { 
	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)","i"); 
	var r = window.location.search.substr(1).match(reg); 
	if (r!=null) return (r[2]); 
	return null; 
}

function btNew_onClick(button){
	FjmzhQueryDZ_dataset.setValue("diAccID",name);
	FjmzhQueryDZ_dataset.setFieldReadOnly("diAccID",true);
	subwindow_signWindow.show();  
}

//�޸�
function showDetailDZ(diAccID){
	locate(diAccID);
	FjmzhQueryDZ_dataset.setFieldReadOnly("diAccID",true);
	subwindow_signWindowEdit.show();  
}


function btSave_postSubmit(button)
  {
	button.url="#";
	//alert("����ɹ�");
	subwindow_signWindow.hide();
	FjmzhQueryDZ_dataset.flushData(FjmzhQueryDZ_dataset.pageIndex);
  }

function signWindow_floatWindow_beforeClose(subwindow){
	
	 FjmzhQueryDZ_dataset.cancelRecord();
	 return true;
}
	
function signWindow_floatWindow_beforeHide(subwindow){
	return signWindow_floatWindow_beforeClose(subwindow);
}

function btBack_onClickCheck()
{
	closeWin();
}

function btSaveEdit_onClickCheck(button){
	var slegalAddressType = FjmzhQueryDZ_dataset.getValue("slegalAddressType");
 	if(slegalAddressType == null || slegalAddressType == ""){
    	alert("��ַ���� ����Ϊ�գ�");
		return false;
    }
 	var sCountryCode = FjmzhQueryDZ_dataset.getValue("sCountryCode");
 	if(sCountryCode == null || sCountryCode == ""){
    	alert("���Ҵ��� ����Ϊ�գ�");
		return false;
    }
    var sAddressEN_AddressFreeEN = FjmzhQueryDZ_dataset.getValue("sAddressEN_AddressFreeEN");
 	if(sAddressEN_AddressFreeEN == null || sAddressEN_AddressFreeEN == ""){
    	alert("Ӣ����ϸ��ַ  ����Ϊ�գ�");
		return false;
    }
    var sAddressFixEN_CityEN = FjmzhQueryDZ_dataset.getValue("sAddressFixEN_CityEN");
 	if(sAddressFixEN_CityEN == null || sAddressFixEN_CityEN == ""){
    	alert("���ڳ���  ����Ϊ�գ�");
		return false;
    }
    var sAddressFixCN_Province = FjmzhQueryDZ_dataset.getValue("sAddressFixCN_Province");
    var sAddressFixCN_CityCN = FjmzhQueryDZ_dataset.getValue("sAddressFixCN_CityCN");
 	if(sAddressFixCN_Province != null && sAddressFixCN_Province != ""){
	 	if(sAddressFixCN_CityCN == null || sAddressFixCN_CityCN == ""){
	    	alert("ʡ�������������� ��Ϊ��ʱ �ؼ��������������� ������д��");
			return false;
	    }
	}
}

//�����ˢ�µ�ǰҳ
function btSaveEdit_postSubmit(button) {
	button.url="#";
	subwindow_signWindowEdit.close();
	flushCurrentPage();
}
</script>
</@CommonQueryMacro.page>
