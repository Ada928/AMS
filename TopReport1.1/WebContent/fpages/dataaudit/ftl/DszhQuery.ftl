<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="���ݷ����ֹ�ִ��">
<@CommonQueryMacro.CommonQuery id="DszhQuery" init="true" submitMode="all" navigate="false">
<table width="1349px">
	<tr>
		<td>
			<@CommonQueryMacro.Interface id="interface" label="��˽�˻���ѯ" btnNm="��ѯ" colNm=8/>
		</td>
	</tr>
	
	<tr>
		<td>
			<@CommonQueryMacro.DataTable id="datatable1" paginationbar="btMod,-"  fieldStr="select[40],xxlx,ckrxm,ckrsfzjzl,ckrsfzjhm,jrjgbm,zh,zhzl,bz,zhzt,jlrq,ismodify"  width="100%" hasFrame="true" height="300" readonly="true"/>
		</td>
	</tr>
	<tr>
		<td>
			
		</td>
	</tr>
</table>
</@CommonQueryMacro.CommonQuery>

<script language="javascript"> 
function btMod_onClick(){
	var ckrsfzjzl = DszhQuery_dataset.getValue("ckrsfzjzl");
	var ckrsfzjhm = DszhQuery_dataset.getValue("ckrsfzjhm");
	
	
	showUpdate(ckrsfzjzl,ckrsfzjhm);
}

function showUpdate(ckrsfzjzl,ckrsfzjhm){

	showWin("��˽�˻���ѯ�޸�","${contextPath}/fpages/regonization/ftl/DszhQueryUpdate.ftl?ckrsfzjzl="+ckrsfzjzl+"&ckrsfzjhm="+ckrsfzjhm,null,null,window);
}
</script>
</@CommonQueryMacro.page>
