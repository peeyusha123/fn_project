<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="vp" uri="/WEB-INF/vendor-project.tld"%>
<%@ taglib prefix="fuze" uri="/WEB-INF/fuze.tld"%>
<%--<script type="text/javascript"  src="${pageContext.request.contextPath}/app/scripts/project/closeout.js?${initParam['buildVersion']}"></script> --%>
<div class="col-sm-12 padding-zero common-docs-container">
	<h5 class="text-brand-red">Document Upload</h5>
	<div class="col-xs-12 col-md-12 col-sm-12 padding-zero">
		<jsp:include page="/app/jsp/project/document-selection.jsp" />
	</div>
	<div class="col-xs-12 col-md-6 col-sm-12 mobile-padding-left-right-0 ipad-padding-left-right-0 mobile-margin-top-10 ipad-margin-top-10 ipad-margin-bottom-10 padding-zero">
		<div class="custom-file-upload height_27">
			<label class="lbl-file-upload"><i class="fa fa-upload fa-bold vertical-align-middle padding-right padding-xs" aria-hidden="true"></i> Drag File Here / Click Here To Upload</label>
			<form method="post" id="close-documents-upload-form" enctype="multipart/form-data" action="service/invoke/upload" target="upload-target" class="upload-form">
				<input name="refNum" id="refNumDocuments" value="" type="hidden">
				<input name="refType" id="refType" value="" type="hidden">
				<input name="service" id="service" value="" type="hidden">
				<input name="category" id="category" value="projects" type="hidden">
				<input name="subCategory" id="subCategory" value="" type="hidden">
				<input name="description" id="description" value="" type="hidden">
				<input name="siteInfoJSON" id="siteInfoJSONDocuments" value='' type="hidden">
				<input name="accessRestriction" class="accessRestriction" id="accessRestriction" value="No" type="hidden" >
				<input name="routingNotNeeded" id="doc_source" value="Yes" type="hidden">
				<input name="uri" id="uri" value="document-gateway/document-service/document/documentUpload" type="hidden">
				<!-- TODO look for code on this -->
				<iframe name="upload-target" id="upload-target" style="display: none;" onload=""></iframe>
				<!-- SPM GUI Fortify often misused file upload vulnerability fix -->
				<input class="col-md-8 col-sm-8 btn btn-default btn-sm input-field padding-right-zero padding-left disable auto-upload-doc" data-table="#closeout-documents-table" name="file" id="browse-files" type="${applicationScope.ContextCache.projectServiceSettings['guiConstants']['FILE_TYPE']}">
				<!-- SPM GUI Fortify often misused file upload vulnerability fix -->
				<!-- <button type="submit" data-toggle="" data-target="" role="button" class="btn btn-danger btn-sm input-field closeout-upload disable common_doc_upload_btn"> <i class="fa fa-spinner fa-spin finalize-spinner hide"></i><b>Upload Document </b> </button> -->
			</form>
		</div>
	</div>
	<div class="documents-result col-xs-12 col-sm-12 padding-zero hide">
		<div id="closeout-documents-table" data-ref-type="CLOSEOUT_DOCUMENTS" class="spm-grid-styles"></div>
	</div>
</div>

<div class="col-xs-12 col-sm-12 padding-left-right-zero padding-bottom margin-top">
	<div class="col-xs-12 col-sm-6 col-md-4 padding-left-right-zero group_one">
		<div class="display-flex single_date opt-field padding-left-right-zero national_fields">
		  <div class="col-sm-6 opt-label-section background-gray-light col-xs-6"><label class="opt-label" data-toggle="tooltip" data-placement="top" data-original-title="Date when Verizon approves the Closeout package">Closeout Package Approved</label></div>
		  <div class="date-picker opt-date-picker col-sm-6  padding-left-right-zero  display-flex border-left opt-single-date-section opt-content-section col-xs-6">
		     <input id="closeoutDocPackageAppr" type="text" data-toggle="tooltip" data-placement="top" data-original-title="Closeout Package Approved Actual Date" close-text="Close" data-provide="datepicker" datepicker-popup="dd-MMM-yyyy"
		       class="disable datepicker  closeoutDocPackageAppr nf_disable form-control input-sm  border-zero padding-right-zero background-image-none" aria-required="false" aria-invalid="false" value=""/>
		     <span class="input-group-btn">
		         <button type="submit" id="btn-date-picker" class="btn btn-default btn-xs" tabindex="0">
		             <span class="vz-icon-today"></span>
		         </button>
		     </span>
		     <b class="fa fa-check-circle opt_icon opt_field_check_green border-zero disable nf_disable"></b>
		  </div>
		</div>
		<div class="display-flex single_date opt-field padding-left-right-zero national_fields">
		  <div class="col-sm-6 opt-label-section background-gray-light col-xs-6"><label class="opt-label" data-toggle="tooltip" data-placement="top" data-original-title="Date when closeout package is uploaded into FUZE">Closeout Package Uploaded</label></div>
		  <div class="date-picker opt-date-picker col-sm-6  padding-left-right-zero  display-flex border-left opt-single-date-section opt-content-section col-xs-6">
		     <input id="closeoutDocPackageUploaded" type="text" data-toggle="tooltip" data-placement="top" data-original-title="Closeout Package Uploaded Actual Date" close-text="Close" data-provide="datepicker" datepicker-popup="dd-MMM-yyyy"
		       class="disable datepicker  closeoutDocPackageUploaded nf_disable form-control input-sm  border-zero padding-right-zero background-image-none" aria-required="false" aria-invalid="false" value=""/>
		     <span class="input-group-btn">
		         <button type="submit" id="btn-date-picker" class="btn btn-default btn-xs" tabindex="0">
		             <span class="vz-icon-today"></span>
		         </button>
		     </span>
		     <b class="fa fa-check-circle opt_icon opt_field_check_green border-zero disable nf_disable"></b>
		  </div>
		</div>
		<div class="display-flex single_date opt-field padding-left-right-zero national_fields">
		  <div class="col-sm-6 opt-label-section background-gray-light col-xs-6"><label class="opt-label" data-toggle="tooltip" data-placement="top" data-original-title="Mount PMI Submitted">Mount PMI Submitted</label></div>
		  <div class="date-picker opt-date-picker col-sm-3 col-xs-3  padding-left-right-zero  display-flex border-left opt-forecast-section">
            <b class=" opt-field-forecast-actual-icon opt_icon disable background-white">F</b>
            <input id="closeoutPmiSubmittedFcDt" type="text" data-toggle="tooltip" data-placement="top" data-original-title="Mount PMI Submitted Forecast Date" close-text="Close" data-provide="datepicker" datepicker-popup="dd-MMM-yyyy"
              class="disable datepicker  closeoutPmiSubmittedFcDt nf_disable form-control input-sm  border-zero padding-right-zero background-image-none" aria-required="false" aria-invalid="false" value=""/>
            <span class="input-group-btn">
                <button type="submit" id="btn-date-picker" class="btn btn-default btn-xs" tabindex="0">
                    <span class="vz-icon-today"></span>
                </button>
            </span>  <b class="fa-lg opt_field_lock border-zero opt_icon disable hide"></b>
            <b class="fa fa-times-circle fa-lg opt_icon disable opt_field_na border-zero"></b>
          </div>
          <div class="date-picker opt-date-picker col-sm-3 col-xs-3  padding-left-right-zero  display-flex border-left opt-actual-section">
            <b class="opt-field-forecast-actual-icon opt_icon disable background-white">A</b>
            <input id="closeoutPmiSubmittedAcDt" type="text" data-toggle="tooltip" data-placement="top" data-original-title="Mount PMI Submitted Actual Date" close-text="Close" data-provide="datepicker" datepicker-popup="dd-MMM-yyyy"
               class="disable datepicker closeoutPmiSubmittedAcDt nf_disable form-control input-sm  border-zero padding-right-zero background-image-none" aria-required="false" aria-invalid="false" value=""/>
             <span class="input-group-btn">
                 <button type="submit" id="btn-date-picker" class="btn btn-default btn-xs" tabindex="0">
                     <span class="vz-icon-today"></span>
                 </button>
             </span>
             <b class="fa fa-check-circle opt_icon opt_field_check_green border-zero disable nf_disable"></b>
          </div>
		</div>
	</div>
	<div class="col-xs-12 col-sm-6 col-md-4 padding-right-zero group_two">
		<div class="display-flex single_date opt-field padding-left-right-zero national_fields">
		  <div class="col-sm-6 opt-label-section background-gray-light col-xs-6"><label class="opt-label" data-toggle="tooltip" data-placement="top" data-original-title="Date when Verizon approves the Fiber closeout package">Fiber COP Approved</label></div>
		  <div class="date-picker opt-date-picker col-sm-6  padding-left-right-zero  display-flex border-left opt-single-date-section opt-content-section col-xs-6">
		     <input id="closeoutDocFiberCopAppr" type="text" data-toggle="tooltip" data-placement="top" data-original-title="Fiber COP Approved Actual Date" close-text="Close" data-provide="datepicker" datepicker-popup="dd-MMM-yyyy"
		       class="disable datepicker  closeoutDocFiberCopAppr nf_disable form-control input-sm  border-zero padding-right-zero background-image-none" aria-required="false" aria-invalid="false" value=""/>
		     <span class="input-group-btn">
		         <button type="submit" id="btn-date-picker" class="btn btn-default btn-xs" tabindex="0">
		             <span class="vz-icon-today"></span>
		         </button>
		     </span>
		     <b class="fa fa-check-circle opt_icon opt_field_check_green border-zero disable nf_disable"></b>
		  </div>
		</div>
		<div class="display-flex single_date opt-field padding-left-right-zero national_fields">
		  <div class="col-sm-6 opt-label-section background-gray-light col-xs-6"><label class="opt-label" data-toggle="tooltip" data-placement="top" data-original-title="Date when Fiber closeout package is uploaded into FUZE">Fiber COP Uploaded</label></div>
		  <div class="date-picker opt-date-picker col-sm-6  padding-left-right-zero  display-flex border-left opt-single-date-section opt-content-section col-xs-6">
		     <input id="closeoutDocFiberCopUploaded" type="text" data-toggle="tooltip" data-placement="top" data-original-title="Fiber COP Uploaded Actual Date" close-text="Close" data-provide="datepicker" datepicker-popup="dd-MMM-yyyy"
		       class="disable datepicker  closeoutDocFiberCopUploaded nf_disable form-control input-sm  border-zero padding-right-zero background-image-none" aria-required="false" aria-invalid="false" value=""/>
		     <span class="input-group-btn">
		         <button type="submit" id="btn-date-picker" class="btn btn-default btn-xs" tabindex="0">
		             <span class="vz-icon-today"></span>
		         </button>
		     </span>
		     <b class="fa fa-check-circle opt_icon opt_field_check_green border-zero disable nf_disable"></b>
		  </div>
		</div>
		<div class="select_picklist opt-field padding-left-right-zero display-flex national_fields">
		  	<div class="col-sm-6 col-xs-6 opt-label-section background-gray-light"><label class="opt-label"  data-toggle="tooltip" data-placement="top" data-original-title="Mount PMI Result Received">Mount PMI Result Received</label></div>
			  <div class="date-picker opt-date-picker col-sm-6  padding-left-right-zero  display-flex border-left opt-single-date-section opt-content-section col-xs-6">
				<input id="closeoutPmiApproved" type="text" data-toggle="tooltip" data-placement="top" data-original-title="Mount PMI Result Received Date" close-text="Close" data-provide="datepicker" datepicker-popup="dd-MMM-yyyy"
				  class="disable datepicker  closeoutPmiApproved nf_disable form-control input-sm  border-zero padding-right-zero background-image-none" aria-required="false" aria-invalid="false" value=""/>
				<span class="input-group-btn">
					<button type="submit" id="btn-date-picker" class="btn btn-default btn-xs" tabindex="0">
						<span class="vz-icon-today"></span>
					</button>
				</span>
				<b class="fa fa-check-circle opt_icon opt_field_check_green border-zero disable nf_disable"></b>
			 </div>
        </div>
		
	</div>
	
	<div class="col-xs-12 col-sm-6 col-md-4 padding-right-zero group_three">
	
      <div class="col-xs-12 col-sm-6 col-md-6 text-bold border-none padding-right-zero mobile-padding-left-0"> In State GC?</div>
      <div class="col-xs-12 col-sm-6 col-md-6 padding-zero">
	  <select class="col-xs-12 col-md-12 mandatory-field form-control-spm  in-state-gc padding-right" data-original-title=" In State GC?">
               <option value="">Nothing Selected</option>
               <option value="Yes">Yes</option>
               <option value="No">No</option>
               
         </select>
         </div>
         

		 
		  
		  
		  <div class="select_picklist opt-field padding-left-right-zero display-flex national_fields">
		  	<div class="col-sm-6 col-xs-6 opt-label-section background-gray-light"><label class="opt-label"  data-toggle="tooltip" data-placement="top" data-original-title="Mount PMI Result">Mount PMI Result</label></div>
		  	<div class="col-sm-6 col-xs-6 padding-left-right-zero border-left opt-content-section opt-content-single-select">
		    	<select id="mountPmiResult" class="disable select_picklist_select mountPmiResult form-control border-zero input-sm padding-right-zero nf_disable">
				    <option value="">Nothing Selected</option>
	                <c:forEach var="mntPmiResult" items="${applicationScope.ContextCache.projectServiceSettings['mountPMIResult']}">
	                    <option value="<c:out value='${mntPmiResult.key}'/>"><c:out value="${mntPmiResult.value}"/></option>
	                </c:forEach>
				</select>
		  	</div>  
	</div>
	</div>

<jsp:include page="/app/jsp/project/optional-fields-container.jsp" />
<div id="Common_CLOSEOUT_DOCUMENTS_UPLOAD" class="col-sm-12 padding-zero history-block">
	<div class="col-sm-12 padding-left-right-zero margin-bottom">
		<h5 class="text-brand-red margin-top-zero padding-left padding-sm">Comments</h5>
		<textarea id="Comments-CLOSEOUT_DOCUMENTS_UPLOAD" class="disable full-width comments"
			data-toggle="tooltip" data-placement="top"
			data-original-title="Do you have any comments?"></textarea>
	</div>
	<button type="submit" class="disable pull-right btn btn-small btn-primary btn-sm finalize-task-button mobile-height" id="CLOSEOUT_DOCUMENTS_UPLOAD" role=""><i class="fa fa-spinner fa-spin finalize-spinner hide"></i><b>Finalize Task</b></button>
	<button type="submit" class="disable pull-right btn btn-small btn-success btn-sm reject-task-button mobile-height hide" id="" role="CLOSEOUT_DOCUMENTS_UPLOAD"><i class="fa fa-spinner fa-spin reject-spinner hide"></i>Reject Task</button>
	<button type="submit" class="disable pull-right btn btn-small btn-default btn-sm save-button mobile-height hide" id="CLOSEOUT_DOCUMENTS_UPLOAD" role="">Save</button>
	<button type="submit" class="pull-right btn btn-small btn-blue btn-sm edit-task-button mobile-height hide" id="" role="CLOSEOUT_DOCUMENTS_UPLOAD">Edit Task</button>
	<button type="submit" class="disable pull-right btn btn-small btn-default btn-sm save-task-comments-button mobile-height" id="CLOSEOUT_DOCUMENTS_UPLOAD" role="">Save Comment(s)</button>
	<div class="overview_icons">
		<i class="fa fa-envelope fa-2x pull-right padding-right text-gold send-comments" id="CLOSEOUT_DOCUMENTS_UPLOAD" role=""></i>
		<vp:VendorProject user="${sessionScope.SiteManagementSession.user}"  displayFlag="false">
			<fuze:HasPermissions user="${sessionScope.SiteManagementSession.user}" type="PRIVILEGE" requirePer="${applicationScope.ContextCache.projectServiceSettings['featureAccess']['GEAR_CLOSEOUT_DOCUMENTS']}">
			<div class="gear_common_parent_container" data-role = "CLOSEOUT_DOCUMENTS_UPLOAD">
				<jsp:include page = "/app/jsp/project/gear-icon.jsp" />
			</div>
			</fuze:HasPermissions>
		</vp:VendorProject>
		<i class=" fa audit-image fa-bold text-link  pull-right cursor-pointer tracker-history" id="CLOSEOUT_DOCUMENTS_UPLOAD" role="" data-milestone="CLOSEOUT_DOCUMENTS"></i>
	</div>
	<div class="pull-left last_updated_by_container hide">Last updated by: <label class="last_updated_value"></label></div>
</div>
<c:if
	test="${not empty applicationScope.ContextCache.projectServiceSettings['taskUserNotes']['CLOSEOUT_DOCUMENTS']}">
	<div class="col-sm-12 padding-zero note-bulb">
		<i class="fa fa-lightbulb-o fa-bold text-brand-red" aria-hidden="true"></i><strong>*${applicationScope.ContextCache.projectServiceSettings['taskUserNotes']['LEASING']}</strong>
	</div>
</c:if>
