package com.huateng.report.genupreportfile.impl;

import java.util.List;
import java.util.Map;

import resource.bean.report.BopCfaStrdeDs;
import resource.report.dao.ROOTDAO;
import resource.report.dao.ROOTDAOUtils;

import com.huateng.ebank.framework.exceptions.CommonException;
import com.huateng.report.constants.TopReportConstants;
import com.huateng.report.system.common.IGetSubFileList;

public class BufCfaFaBopCfaStrdeDsImpl implements IGetSubFileList  {

	public List getSubFileResultList(Map<String, Object> paramMap)
			throws CommonException {
		// TODO Auto-generated method stub
		ROOTDAO dao = ROOTDAOUtils.getROOTDAO();
		StringBuffer hqlBuff = new StringBuffer();
		String fileDate = (String) paramMap.get(IGetSubFileList.IN_FILE_DATE);
		String appType = (String) paramMap.get(IGetSubFileList.IN_APP_TYPE);
		String fileType = (String) paramMap.get(IGetSubFileList.IN_FILE_TYPE);
		hqlBuff.append(" from BopCfaStrdeDs model ").append(" where model.apptype = '"+appType).append("'")
		.append(" and model.currentfile = '"+fileType+"'");
		if (fileDate!=null && fileDate.trim().length()>0) {
			hqlBuff.append(" and model.workDate = '"+fileDate+"'");
		}
		hqlBuff.append(" and model.recStatus = '"+TopReportConstants.REPORT_RECSTATUS_05+"'");
		//上报字段是AGINRAPAY,bean里的是aginraloinpay
		List<BopCfaStrdeDs> list = dao.queryByQL2List(hqlBuff.toString());
		for(BopCfaStrdeDs ds : list) {
			ds.setAginrapay(ds.getAginraloinpay());
		}
		return list;
	}

}
