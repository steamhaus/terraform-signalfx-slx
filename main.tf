module "detectors" {
  source = "./detectors"

  service_name                          = var.service_name
  responsible_team                      = var.responsible_team
  successful_operations_sli_count_query = var.successful_operations_sli_count_query
  total_operations_sli_count_query      = var.total_operations_sli_count_query
  error_operations_sli_count_query      = var.error_operations_sli_count_query
  operation_time_sli_query              = var.operation_time_sli_query
  operation_time_sli_unit               = var.operation_time_sli_unit
  operation_time_slo_target             = var.operation_time_slo_target
  operation_time_slo_duration           = var.operation_time_slo_duration
  operation_success_ratio_slo_target    = var.operation_success_ratio_slo_target
  operation_success_ratio_slo_duration  = var.operation_success_ratio_slo_duration
}

module "dashboards" {
  source = "./dashboards"

  service_name                          = var.service_name
  responsible_team                      = var.responsible_team
  successful_operations_sli_count_query = var.successful_operations_sli_count_query
  total_operations_sli_count_query      = var.total_operations_sli_count_query
  error_operations_sli_count_query      = var.error_operations_sli_count_query
  operation_time_sli_query              = var.operation_time_sli_query
  operation_time_sli_unit               = var.operation_time_sli_unit
  operation_time_slo_target             = var.operation_time_slo_target
  operation_success_ratio_slo_target    = var.operation_success_ratio_slo_target
  operation_slo_success_ratio_detector_id = module.detectors.slx_success_ratio_slo_detector
  operation_duration_slo_detector_id = module.detectors.slx_operation_duration_slo_detector
}
