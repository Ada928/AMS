<#import "/templets/commonQuery/CommonQueryTagMacro.ftl" as CommonQueryMacro>
<@CommonQueryMacro.page title="���ݷ����ֹ�ִ��">
<@CommonQueryMacro.CommonQuery id="DszhQueryLM" init="true" submitMode="all" navigate="false">
<table width="1349px">
	
	
	<tr>
		<td>
			<@CommonQueryMacro.DataTable id="datatable1" paginationbar="btMod,-,btAdd"  fieldStr="select[40],zh,ckrxm,ckrsfzjzl,ckrsfzjhm,sfzjdqr,dqdm,ckrlb,ckrgjdq,ckrxb"  width="100%" hasFrame="true" height="300" readonly="true"/>
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
	var zh = DszhQueryLM_dataset.getValue("zh");
	showUpdate(zh);
}

function showUpdate(zh){

	showWin("��˽�˻���ѯ�޸�","${contextPath}/fpages/regonization/ftl/DszhQueryLMUpdate.ftl?zh="+zh,null,null,window);
}
</script>
</@CommonQueryMacro.page>
