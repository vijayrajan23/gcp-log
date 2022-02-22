resource "google_logging_metric" "cpms_coconut_query_time_channel_orgs" {
  name        = "cpms/coconut/db_query_time_${var.query_channel}"
  filter      = <<EOF
		resource.type="${var.resource_type}"
        resource.labels.namespace_name="${var.namespace_name}"
		resource.labels.container_name="${var.container_name}"
        textPayload:"query-time-channel-orgs"
		EOF
  description = ""
  metric_descriptor {
    metric_kind = "DELTA"
    value_type  = "INT64"
    unit        = "1"

    labels {
      key         = "query_time_channel_orgs"
      value_type  = "INT64"
      description = "query time for channel orgs"
    }
  }
  label_extractors = {
    "query-time-channel-orgs" = ""
  }

}

resource "google_logging_metric" "cpms_coconut_query_time_outlet_cores" {
  name        = "cpms/coconut/db_query_time_${var.query_outlet}"
  filter      = <<EOF
		resource.type="${var.resource_type}"
        resource.labels.namespace_name="${var.namespace_name}"
		resource.labels.container_name="${var.container_name}"
        textPayload:"query-time-outlet-cores"
		EOF
  description = ""
  metric_descriptor {
    metric_kind = "DELTA"
    value_type  = "INT64"
    unit        = "1"

    labels {
      key         = "query_time_outlet_cores"
      value_type  = "INT64"
      description = "query time for outlet-cores"
    }
  }
  label_extractors = {
    "query-time-outlet-cores" = ""
  }

}

resource "google_logging_metric" "cpms_coconut_query_time_sales_reps" {
  name        = "cpms/coconut/db_query_time_${var.query_sales}"
  filter      = <<EOF
		resource.type="${var.resource_type}"
        resource.labels.namespace_name="${var.namespace_name}"
		resource.labels.container_name="${var.container_name}"
        textPayload:"query-time-sales-reps"
		EOF
  description = ""
  metric_descriptor {
    metric_kind = "DELTA"
    value_type  = "INT64"
    unit        = "1"
    labels {
      key         = "query_time_sales_reps"
      value_type  = "INT64"
      description = "query time for sales-reps"
    }
  }
  label_extractors = {
    "query-time-sales-reps" = ""
  }
}
