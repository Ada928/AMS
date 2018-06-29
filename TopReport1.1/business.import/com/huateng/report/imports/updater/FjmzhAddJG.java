package com.huateng.report.imports.updater;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.huateng.commquery.result.MultiUpdateResultBean;
import com.huateng.commquery.result.UpdateResultBean;
import com.huateng.commquery.result.UpdateReturnBean;
import com.huateng.ebank.framework.operation.OPCaller;
import com.huateng.ebank.framework.operation.OperationContext;
import com.huateng.ebank.framework.web.commQuery.BaseUpdate;
import com.huateng.exception.AppException;
import com.huateng.report.imports.operation.FjmzhQueryUpdateOperation;

import resources.east.data.pub.AmsFjmzh;
import resources.east.data.pub.AmsFjmzhJG;

public class FjmzhAddJG extends BaseUpdate {

	private static final Logger logger = Logger.getLogger(FjmzhAddJG.class);
	
	@Override
	public UpdateReturnBean saveOrUpdate(
			MultiUpdateResultBean multiUpdateResultBean,
			HttpServletRequest request, HttpServletResponse response)
			throws AppException {
		// TODO Auto-generated method stub

			String nextUrl = "";

			UpdateReturnBean updateReturnBean = new UpdateReturnBean();
			UpdateResultBean updateResultBean = multiUpdateResultBean
					.getUpdateResultBeanByID("FjmzhAdd");
			
			List<AmsFjmzhJG> insertList = new ArrayList<AmsFjmzhJG>();
			List delList = new ArrayList();
			List updateList = new ArrayList();


			while (updateResultBean.hasNext()) {
				AmsFjmzhJG amsFjmzh=new AmsFjmzhJG();
				Map map = updateResultBean.next();
				mapToObject(amsFjmzh, map);
				insertList.add(amsFjmzh);
			}
			
			OperationContext oc = new OperationContext();
			oc.setAttribute(FjmzhQueryUpdateOperation.IN_DEL, delList);
			oc.setAttribute(FjmzhQueryUpdateOperation.IN_INSERT, insertList);
			oc.setAttribute(FjmzhQueryUpdateOperation.IN_UPDATE, updateList);
			OPCaller.call("FjmzhQueryJGUpdateOperation", oc);
			return updateReturnBean;


	}

}