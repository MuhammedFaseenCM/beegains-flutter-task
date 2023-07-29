class EnquiryList {
  final bool? success;
  final String? message;
  final EnquiryData? data;

  EnquiryList({
    this.success,
    this.message,
    this.data,
  });

  factory EnquiryList.fromJson(Map<String, dynamic> json) {
    return EnquiryList(
      success: json['success'],
      message: json['message'],
      data: json['data'] != null ? EnquiryData.fromJson(json['data']) : null,
    );
  }
}

class EnquiryData {
  final Enquiries? enquiries;
  final String? firstPageUrl;
  final int? from;
  final int? lastPage;
  final String? lastPageUrl;
  final String? nextPageUrl;
  final String? path;
  final int? perPage;
  final String? prevPageUrl;
  final int? to;
  final int? total;

  EnquiryData({
    this.enquiries,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  factory EnquiryData.fromJson(Map<String, dynamic> json) {
    return EnquiryData(
      enquiries: json['enquiries'] != null ? Enquiries.fromJson(json['enquiries']) : null,
      firstPageUrl: json['first_page_url'],
      from: json['from'],
      lastPage: json['last_page'],
      lastPageUrl: json['last_page_url'],
      nextPageUrl: json['next_page_url'],
      path: json['path'],
      perPage: json['per_page'],
      prevPageUrl: json['prev_page_url'],
      to: json['to'],
      total: json['total'],
    );
  }
}

class Enquiries {
  final int? currentPage;
  final List<Enquiry>? data;

  Enquiries({
    this.currentPage,
    this.data,
  });

  factory Enquiries.fromJson(Map<String, dynamic> json) {
    return Enquiries(
      currentPage: json['current_page'],
      data: (json['data'] as List<dynamic>).map((item) => Enquiry.fromJson(item)).toList(),
    );
  }
}

class Enquiry {
  final int? id;
  final String? enquiryNo;
  final int? jobcardId;
  final int? franchiseId;
  final int? enquirySourceId;
  final int? enquirySubSourceId;
  final String? rcOwnerName;
  final String? rcOwnerPrimaryMobile;
  final String? rcOwnerSecondaryMobile;
  final String? rcOwnerAddress;
  final String? rcOwnerDistrict;
  final String? rcOwnerLocation;
  final String? name;
  final String? primaryMobile;
  final String? secondaryMobile;
  final String? address;
  final String? location;
  final String? district;
  final int? kms;
  final String? enquiryDate;
  final String? estimationDate;
  final int? vehicleMakeId;
  final int? vehicleModelId;
  final String? vehicleRegNo;
  final String? vehicleColor;
  final String? vehicleAge;
  final int? noOfPanels;
  final String? specifyWorkInDetail;
  final String? customerRemarks;
  final int? insuranceClaim;
  final String? insuranceExpireDate;
  final int? insuranceCompanyId;
  final int? corporateCompanyId;
  final String? serviceAdvisorName;
  final String? serviceAdvisorPhone;
  final int? insuranceTypeId;
  final String? surveyDate;
  final String? surveyTime;
  final int? surveyStatus;
  final String? surveyAmount;
  final int? insuranceAgentId;
  final String? surveyRemarks;
  final int? currentFollowupId;
  final int? currentFollowupLeadStatusId;
  final int? currentFollowupedBy;
  final int? convertedBy;
  final dynamic grandTotal;
  final int? gatepassStatus;
  final AssignedTo? assignedTo;
  final int? createdBy;
  final int? updatedBy;
  final int? device;
  final int? lastUpdatedDevice;
  final String? createdAt;
  final String? updatedAt;
  final dynamic deletedAt;
  final EnquirySource? enquirySource;
  final EnquirySubSource? enquirySubSource;
  final VehicleMake? vehicleMake;
  final VehicleModel? vehicleModel;
  final InsuranceCompany? insuranceCompany;
  final LeadStatus? leadStatus;
  final dynamic corporateCompany;
  final EnquiriesFollowup? enquiriesFollowup;
  final List<EnquiryVertical>? enquiriesVerticals;
  final List<EnquirySubVertical>? enquiriesSubVerticals;
  final List<dynamic> enquiriesWorks;

  Enquiry({
    this.id,
    this.enquiryNo,
    this.jobcardId,
    this.franchiseId,
    this.enquirySourceId,
    this.enquirySubSourceId,
    this.rcOwnerName,
    this.rcOwnerPrimaryMobile,
    this.rcOwnerSecondaryMobile,
    this.rcOwnerAddress,
    this.rcOwnerDistrict,
    this.rcOwnerLocation,
    this.name,
    this.primaryMobile,
    this.secondaryMobile,
    this.address,
    this.location,
    this.district,
    this.kms,
    this.enquiryDate,
    this.estimationDate,
    this.vehicleMakeId,
    this.vehicleModelId,
    this.vehicleRegNo,
    this.vehicleColor,
    this.vehicleAge,
    this.noOfPanels,
    this.specifyWorkInDetail,
    this.customerRemarks,
    this.insuranceClaim,
    this.insuranceExpireDate,
    this.insuranceCompanyId,
    this.corporateCompanyId,
    this.serviceAdvisorName,
    this.serviceAdvisorPhone,
    this.insuranceTypeId,
    this.surveyDate,
    this.surveyTime,
    this.surveyStatus,
    this.surveyAmount,
    this.insuranceAgentId,
    this.surveyRemarks,
    this.currentFollowupId,
    this.currentFollowupLeadStatusId,
    this.currentFollowupedBy,
    this.convertedBy,
    this.grandTotal,
    this.gatepassStatus,
    this.assignedTo,
    this.createdBy,
    this.updatedBy,
    this.device,
    this.lastUpdatedDevice,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.enquirySource,
    this.enquirySubSource,
    this.vehicleMake,
    this.vehicleModel,
    this.insuranceCompany,
    this.leadStatus,
    this.corporateCompany,
    this.enquiriesFollowup,
    this.enquiriesVerticals,
    this.enquiriesSubVerticals,
    required this.enquiriesWorks,
  });

  factory Enquiry.fromJson(Map<String, dynamic> json) {
    return Enquiry(
      id: json['id'],
      enquiryNo: json['enquiry_no'],
      jobcardId: json['jobcard_id'],
      franchiseId: json['franchise_id'],
      enquirySourceId: json['enquiry_source_id'],
      enquirySubSourceId: json['enquiry_sub_source_id'],
      rcOwnerName: json['rc_owner_name'],
      rcOwnerPrimaryMobile: json['rc_owner_primary_mobile'],
      rcOwnerSecondaryMobile: json['rc_owner_secondary_mobile'],
      rcOwnerAddress: json['rc_owner_address'],
      rcOwnerDistrict: json['rc_owner_district'],
      rcOwnerLocation: json['rc_owner_location'],
      name: json['name'],
      primaryMobile: json['primary_mobile'],
      secondaryMobile: json['secondary_mobile'],
      address: json['address'],
      location: json['location'],
      district: json['district'],
      kms: json['kms'],
      enquiryDate: json['enquiry_date'],
      estimationDate: json['estimation_date'],
      vehicleMakeId: json['vehicle_make_id'],
      vehicleModelId: json['vehicle_model_id'],
      vehicleRegNo: json['vehicle_reg_no'],
      vehicleColor: json['vehicle_color'],
      vehicleAge: json['vehicle_age'],
      noOfPanels: json['no_of_panels'],
      specifyWorkInDetail: json['specify_work_in_detail'],
      customerRemarks: json['customer_remarks'],
      insuranceClaim: json['insurance_claim'],
      insuranceExpireDate: json['insurance_expire_date'],
      insuranceCompanyId: json['insurance_company_id'],
      corporateCompanyId: json['corporate_company_id'],
      serviceAdvisorName: json['service_advisor_name'],
      serviceAdvisorPhone: json['service_advisor_phone'],
      insuranceTypeId: json['insurance_type_id'],
      surveyDate: json['survey_date'],
      surveyTime: json['survey_time'],
      surveyStatus: json['survey_status'],
      surveyAmount: json['survey_amount'],
      insuranceAgentId: json['insurance_agent_id'],
      surveyRemarks: json['survey_remarks'],
      currentFollowupId: json['current_followup_id'],
      currentFollowupLeadStatusId: json['current_followup_lead_status_id'],
      currentFollowupedBy: json['current_followuped_by'],
      convertedBy: json['converted_by'],
      grandTotal: json['grand_total'],
      gatepassStatus: json['gatepass_status'],
      assignedTo: json['assigned_to'] != null ? AssignedTo.fromJson(json['assigned_to']) : null,
      createdBy: json['created_by'],
      updatedBy: json['updated_by'],
      device: json['device'],
      lastUpdatedDevice: json['last_updated_device'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      deletedAt: json['deleted_at'],
      enquirySource: json['enquiry_source'] != null ? EnquirySource.fromJson(json['enquiry_source']) : null,
      enquirySubSource: json['enquiry_subsource'] != null ? EnquirySubSource.fromJson(json['enquiry_subsource']) : null,
      vehicleMake: json['vehicle_make'] != null ? VehicleMake.fromJson(json['vehicle_make']) : null,
      vehicleModel: json['vehicle_model'] != null ? VehicleModel.fromJson(json['vehicle_model']) : null,
      insuranceCompany: json['insurance_company'] != null ? InsuranceCompany.fromJson(json['insurance_company']) : null,
      leadStatus: json['lead_status'] != null ? LeadStatus.fromJson(json['lead_status']) : null,
      corporateCompany: json['corporate_company'],
      enquiriesFollowup: json['enquiries_followup'] != null ? EnquiriesFollowup.fromJson(json['enquiries_followup']) : null,
      enquiriesVerticals: (json['enquiries_verticals'] as List<dynamic>)
          .map((item) => EnquiryVertical.fromJson(item))
          .toList(),
      enquiriesSubVerticals: (json['enquiries_sub_verticals'] as List<dynamic>)
          .map((item) => EnquirySubVertical.fromJson(item))
          .toList(),
      enquiriesWorks: json['enquiries_works'] as List<dynamic>,
    );
  }
}

class AssignedTo {
  final int? id;
  final String? employeeName;

  AssignedTo({
    this.id,
    this.employeeName,
  });

  factory AssignedTo.fromJson(Map<String, dynamic> json) {
    return AssignedTo(
      id: json['id'],
      employeeName: json['employee_name'],
    );
  }
}

class EnquirySource {
  final int? id;
  final String? name;

  EnquirySource({
    this.id,
    this.name,
  });

  factory EnquirySource.fromJson(Map<String, dynamic> json) {
    return EnquirySource(
      id: json['id'],
      name: json['name'],
    );
  }
}

class EnquirySubSource {
  final int? id;
  final String? enquirySubSource;

  EnquirySubSource({
    this.id,
    this.enquirySubSource,
  });

  factory EnquirySubSource.fromJson(Map<String, dynamic> json) {
    return EnquirySubSource(
      id: json['id'],
      enquirySubSource: json['enquiry_subsource'],
    );
  }
}

class VehicleMake {
  final int? id;
  final String? make;

  VehicleMake({
    this.id,
    this.make,
  });

  factory VehicleMake.fromJson(Map<String, dynamic> json) {
    return VehicleMake(
      id: json['id'],
      make: json['make'],
    );
  }
}

class VehicleModel {
  final int? id;
  final String? model;

  VehicleModel({
    this.id,
    this.model,
  });

  factory VehicleModel.fromJson(Map<String, dynamic> json) {
    return VehicleModel(
      id: json['id'],
      model: json['model'],
    );
  }
}

class InsuranceCompany {
  final int? id;
  final String? name;

  InsuranceCompany({
    this.id,
    this.name,
  });

  factory InsuranceCompany.fromJson(Map<String, dynamic> json) {
    return InsuranceCompany(
      id: json['id'],
      name: json['name'],
    );
  }
}

class LeadStatus {
  final int? id;
  final String? name;

  LeadStatus({
    this.id,
    this.name,
  });

  factory LeadStatus.fromJson(Map<String, dynamic> json) {
    return LeadStatus(
      id: json['id'],
      name: json['name'],
    );
  }
}

class EnquiriesFollowup {
  final int? id;
  final int? enquiryId;
  final int? leadStatusId;
  final dynamic remarks;
  final String? nextFollowupDate;
  final dynamic lostReasonId;
  final int? createdBy;
  final dynamic updatedBy;
  final String? createdAt;
  final String? updatedAt;
  final dynamic deletedAt;
  final dynamic lostReason;
  final LeadStatus? leadStatus;

  EnquiriesFollowup({
    this.id,
    this.enquiryId,
    this.leadStatusId,
    this.remarks,
    this.nextFollowupDate,
    this.lostReasonId,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.lostReason,
    this.leadStatus,
  });

  factory EnquiriesFollowup.fromJson(Map<String, dynamic> json) {
    return EnquiriesFollowup(
      id: json['id'],
      enquiryId: json['enquiry_id'],
      leadStatusId: json['lead_status_id'],
      remarks: json['remarks'],
      nextFollowupDate: json['next_followup_date'],
      lostReasonId: json['lost_reason_id'],
      createdBy: json['created_by'],
      updatedBy: json['updated_by'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      deletedAt: json['deleted_at'],
      lostReason: json['lost_reason'],
      leadStatus: json['lead_status'] != null ? LeadStatus.fromJson(json['lead_status']) : null,
    );
  }
}

class EnquiryVertical {
  final int? id;
  final int? enquiryId;
  final int? verticalId;
  final String? createdAt;
  final String? updatedAt;
  final dynamic deletedAt;
  final Vertical? vertical;

  EnquiryVertical({
    this.id,
    this.enquiryId,
    this.verticalId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.vertical,
  });

  factory EnquiryVertical.fromJson(Map<String, dynamic> json) {
    return EnquiryVertical(
      id: json['id'],
      enquiryId: json['enquiry_id'],
      verticalId: json['vertical_id'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      deletedAt: json['deleted_at'],
      vertical: json['vertical'] != null ? Vertical.fromJson(json['vertical']) : null,
    );
  }
}

class EnquirySubVertical {
  final int? id;
  final int? enquiryId;
  final int? subVerticalId;
  final String? createdAt;
  final String? updatedAt;
  final dynamic deletedAt;
  final SubVertical? subVertical;

  EnquirySubVertical({
    this.id,
    this.enquiryId,
    this.subVerticalId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.subVertical,
  });

  factory EnquirySubVertical.fromJson(Map<String, dynamic> json) {
    return EnquirySubVertical(
      id: json['id'],
      enquiryId: json['enquiry_id'],
      subVerticalId: json['sub_vertical_id'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      deletedAt: json['deleted_at'],
      subVertical: json['sub_vertical'] != null ? SubVertical.fromJson(json['sub_vertical']) : null,
    );
  }
}

class Vertical {
  final int? id;
  final String? name;

  Vertical({
    this.id,
    this.name,
  });

  factory Vertical.fromJson(Map<String, dynamic> json) {
    return Vertical(
      id: json['id'],
      name: json['name'],
    );
  }
}

class SubVertical {
  final int? id;
  final int? verticalId;
  final String? name;
  final Vertical? vertical;

  SubVertical({
    this.id,
    this.verticalId,
    this.name,
    this.vertical,
  });

  factory SubVertical.fromJson(Map<String, dynamic> json) {
    return SubVertical(
      id: json['id'],
      verticalId: json['vertical_id'],
      name: json['name'],
      vertical: json['vertical'] != null ? Vertical.fromJson(json['vertical']) : null,
    );
  }
}
