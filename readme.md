Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # google_bigquery_dataset.dataset will be created
  + resource "google_bigquery_dataset" "dataset" {
      + creation_time               = (known after apply)
      + dataset_id                  = "example_dataset"
      + default_table_expiration_ms = 3600000
      + delete_contents_on_destroy  = false
      + description                 = "This is a test description"
      + etag                        = (known after apply)
      + friendly_name               = "test"
      + id                          = (known after apply)
      + last_modified_time          = (known after apply)
      + location                    = "EU"
      + project                     = (known after apply)
      + self_link                   = (known after apply)

      + access {
          + role          = "OWNER"
          + user_by_email = (known after apply)
        }
    }

  # google_compute_firewall.http-allow-8080 will be created
  + resource "google_compute_firewall" "http-allow-8080" {
      + creation_timestamp = (known after apply)
      + destination_ranges = (known after apply)
      + direction          = (known after apply)
      + enable_logging     = (known after apply)
      + id                 = (known after apply)
      + name               = "default-allow-8080-terraform"
      + network            = (known after apply)
      + priority           = 1000
      + project            = (known after apply)
      + self_link          = (known after apply)
      + source_ranges      = [
          + "0.0.0.0/0",
        ]

      + allow {
          + ports    = [
              + "8080",
            ]
          + protocol = "tcp"
        }
    }

  # google_compute_firewall.http-server will be created
  + resource "google_compute_firewall" "http-server" {
      + creation_timestamp = (known after apply)
      + destination_ranges = (known after apply)
      + direction          = (known after apply)
      + enable_logging     = (known after apply)
      + id                 = (known after apply)
      + name               = "default-allow-http-terraform"
      + network            = (known after apply)
      + priority           = 1000
      + project            = (known after apply)
      + self_link          = (known after apply)
      + source_ranges      = [
          + "0.0.0.0/0",
        ]
      + target_tags        = [
          + "http-server",
        ]

      + allow {
          + ports    = [
              + "80",
            ]
          + protocol = "tcp"
        }
    }

  # google_compute_instance.private will be created
  + resource "google_compute_instance" "private" {
      + can_ip_forward       = false
      + cpu_platform         = (known after apply)
      + current_status       = (known after apply)
      + deletion_protection  = false
      + guest_accelerator    = (known after apply)
      + id                   = (known after apply)
      + instance_id          = (known after apply)
      + label_fingerprint    = (known after apply)
      + machine_type         = "f1-micro"
      + metadata_fingerprint = (known after apply)
      + min_cpu_platform     = (known after apply)
      + name                 = "virtual-machine-from-terraform"
      + project              = (known after apply)
      + self_link            = (known after apply)
      + tags                 = [
          + "http-server",
        ]
      + tags_fingerprint     = (known after apply)
      + zone                 = "us-central1-a"

      + boot_disk {
          + auto_delete                = true
          + device_name                = (known after apply)
          + disk_encryption_key_sha256 = (known after apply)
          + kms_key_self_link          = (known after apply)
          + mode                       = "READ_WRITE"
          + source                     = (known after apply)

          + initialize_params {
              + image  = "debian-cloud/debian-9"
              + labels = (known after apply)
              + size   = (known after apply)
              + type   = (known after apply)
            }
        }

      + confidential_instance_config {
          + enable_confidential_compute = (known after apply)
        }

      + network_interface {
          + name               = (known after apply)
          + network            = "vpc-network"
          + network_ip         = "10.0.2.14"
          + subnetwork         = "subnet2"
          + subnetwork_project = (known after apply)
        }

      + reservation_affinity {
          + type = (known after apply)

          + specific_reservation {
              + key    = (known after apply)
              + values = (known after apply)
            }
        }

      + scheduling {
          + automatic_restart   = (known after apply)
          + min_node_cpus       = (known after apply)
          + on_host_maintenance = (known after apply)
          + preemptible         = (known after apply)

          + node_affinities {
              + key      = (known after apply)
              + operator = (known after apply)
              + values   = (known after apply)
            }
        }
    }

  # google_compute_instance.public will be created
  + resource "google_compute_instance" "public" {
      + can_ip_forward          = false
      + cpu_platform            = (known after apply)
      + current_status          = (known after apply)
      + deletion_protection     = false
      + guest_accelerator       = (known after apply)
      + id                      = (known after apply)
      + instance_id             = (known after apply)
      + label_fingerprint       = (known after apply)
      + machine_type            = "f1-micro"
      + metadata_fingerprint    = (known after apply)
      + metadata_startup_script = "sudo apt-get update && sudo apt-get install apache2 -y && echo '<!doctype html><html><body><h1>hello form osama</h1></body></html>' | sudo tee /var/www/html/index.html"
      + min_cpu_platform        = (known after apply)
      + name                    = "virtual-machine-from-terraform"
      + project                 = (known after apply)
      + self_link               = (known after apply)
      + tags                    = [
          + "http-server",
        ]
      + tags_fingerprint        = (known after apply)
      + zone                    = "eu-west-1"

      + boot_disk {
          + auto_delete                = true
          + device_name                = (known after apply)
          + disk_encryption_key_sha256 = (known after apply)
          + kms_key_self_link          = (known after apply)
          + mode                       = "READ_WRITE"
          + source                     = (known after apply)

          + initialize_params {
              + image  = "debian-cloud/debian-9"
              + labels = (known after apply)
              + size   = (known after apply)
              + type   = (known after apply)
            }
        }

      + confidential_instance_config {
          + enable_confidential_compute = (known after apply)
        }

      + network_interface {
          + name               = (known after apply)
          + network            = "vpc-network"
          + network_ip         = "10.0.1.14"
          + subnetwork         = "subnet1"
          + subnetwork_project = (known after apply)

          + access_config {
              + nat_ip       = (known after apply)
              + network_tier = (known after apply)
            }
        }

      + reservation_affinity {
          + type = (known after apply)

          + specific_reservation {
              + key    = (known after apply)
              + values = (known after apply)
            }
        }

      + scheduling {
          + automatic_restart   = (known after apply)
          + min_node_cpus       = (known after apply)
          + on_host_maintenance = (known after apply)
          + preemptible         = (known after apply)

          + node_affinities {
              + key      = (known after apply)
              + operator = (known after apply)
              + values   = (known after apply)
            }
        }
    }

  # google_compute_network.vpc_network will be created
  + resource "google_compute_network" "vpc_network" {
      + auto_create_subnetworks         = true
      + delete_default_routes_on_create = false
      + gateway_ipv4                    = (known after apply)
      + id                              = (known after apply)
      + mtu                             = (known after apply)
      + name                            = "vpc-network"
      + project                         = (known after apply)
      + routing_mode                    = (known after apply)
      + self_link                       = (known after apply)
    }

  # google_compute_subnetwork.subnet1 will be created
  + resource "google_compute_subnetwork" "subnet1" {
      + creation_timestamp         = (known after apply)
      + fingerprint                = (known after apply)
      + gateway_address            = (known after apply)
      + id                         = (known after apply)
      + ip_cidr_range              = "10.0.1.0/24"
      + name                       = "subnet1"
      + network                    = (known after apply)
      + private_ipv6_google_access = (known after apply)
      + project                    = (known after apply)
      + region                     = "eu-west-1"
      + secondary_ip_range         = (known after apply)
      + self_link                  = (known after apply)
    }

  # google_compute_subnetwork.subnet2 will be created
  + resource "google_compute_subnetwork" "subnet2" {
      + creation_timestamp         = (known after apply)
      + fingerprint                = (known after apply)
      + gateway_address            = (known after apply)
      + id                         = (known after apply)
      + ip_cidr_range              = "10.0.2.0/24"
      + name                       = "subnet2"
      + network                    = (known after apply)
      + private_ipv6_google_access = (known after apply)
      + project                    = (known after apply)
      + region                     = "us-central1"
      + secondary_ip_range         = (known after apply)
      + self_link                  = (known after apply)
    }

  # google_container_cluster.primary will be created
  + resource "google_container_cluster" "primary" {
      + cluster_ipv4_cidr           = (known after apply)
      + datapath_provider           = (known after apply)
      + default_max_pods_per_node   = (known after apply)
      + enable_binary_authorization = false
      + enable_intranode_visibility = (known after apply)
      + enable_kubernetes_alpha     = false
      + enable_legacy_abac          = false
      + enable_shielded_nodes       = (known after apply)
      + endpoint                    = (known after apply)
      + id                          = (known after apply)
      + initial_node_count          = 1
      + instance_group_urls         = (known after apply)
      + label_fingerprint           = (known after apply)
      + location                    = "us-central1"
      + logging_service             = (known after apply)
      + master_version              = (known after apply)
      + monitoring_service          = (known after apply)
      + name                        = "my-gke-cluster"
      + network                     = "default"
      + networking_mode             = (known after apply)
      + node_locations              = (known after apply)
      + node_version                = (known after apply)
      + operation                   = (known after apply)
      + private_ipv6_google_access  = (known after apply)
      + project                     = (known after apply)
      + remove_default_node_pool    = true
      + self_link                   = (known after apply)
      + services_ipv4_cidr          = (known after apply)
      + subnetwork                  = (known after apply)
      + tpu_ipv4_cidr_block         = (known after apply)

      + addons_config {
          + cloudrun_config {
              + disabled           = (known after apply)
              + load_balancer_type = (known after apply)
            }

          + horizontal_pod_autoscaling {
              + disabled = (known after apply)
            }

          + http_load_balancing {
              + disabled = (known after apply)
            }

          + network_policy_config {
              + disabled = (known after apply)
            }
        }

      + authenticator_groups_config {
          + security_group = (known after apply)
        }

      + cluster_autoscaling {
          + enabled = (known after apply)

          + auto_provisioning_defaults {
              + oauth_scopes    = (known after apply)
              + service_account = (known after apply)
            }

          + resource_limits {
              + maximum       = (known after apply)
              + minimum       = (known after apply)
              + resource_type = (known after apply)
            }
        }

      + database_encryption {
          + key_name = (known after apply)
          + state    = (known after apply)
        }

      + default_snat_status {
          + disabled = (known after apply)
        }

      + ip_allocation_policy {
          + cluster_ipv4_cidr_block       = (known after apply)
          + cluster_secondary_range_name  = (known after apply)
          + services_ipv4_cidr_block      = (known after apply)
          + services_secondary_range_name = (known after apply)
        }

      + master_auth {
          + client_certificate     = (known after apply)
          + client_key             = (sensitive value)
          + cluster_ca_certificate = (known after apply)
          + password               = (sensitive value)
          + username               = (known after apply)

          + client_certificate_config {
              + issue_client_certificate = (known after apply)
            }
        }

      + network_policy {
          + enabled  = (known after apply)
          + provider = (known after apply)
        }

      + node_config {
          + disk_size_gb      = (known after apply)
          + disk_type         = (known after apply)
          + guest_accelerator = (known after apply)
          + image_type        = (known after apply)
          + labels            = (known after apply)
          + local_ssd_count   = (known after apply)
          + machine_type      = (known after apply)
          + metadata          = (known after apply)
          + min_cpu_platform  = (known after apply)
          + oauth_scopes      = (known after apply)
          + preemptible       = (known after apply)
          + service_account   = (known after apply)
          + tags              = (known after apply)
          + taint             = (known after apply)

          + shielded_instance_config {
              + enable_integrity_monitoring = (known after apply)
              + enable_secure_boot          = (known after apply)
            }

          + workload_metadata_config {
              + node_metadata = (known after apply)
            }
        }

      + node_pool {
          + initial_node_count  = (known after apply)
          + instance_group_urls = (known after apply)
          + max_pods_per_node   = (known after apply)
          + name                = (known after apply)
          + name_prefix         = (known after apply)
          + node_count          = (known after apply)
          + node_locations      = (known after apply)
          + version             = (known after apply)

          + autoscaling {
              + max_node_count = (known after apply)
              + min_node_count = (known after apply)
            }

          + management {
              + auto_repair  = (known after apply)
              + auto_upgrade = (known after apply)
            }

          + node_config {
              + disk_size_gb      = (known after apply)
              + disk_type         = (known after apply)
              + guest_accelerator = (known after apply)
              + image_type        = (known after apply)
              + labels            = (known after apply)
              + local_ssd_count   = (known after apply)
              + machine_type      = (known after apply)
              + metadata          = (known after apply)
              + min_cpu_platform  = (known after apply)
              + oauth_scopes      = (known after apply)
              + preemptible       = (known after apply)
              + service_account   = (known after apply)
              + tags              = (known after apply)
              + taint             = (known after apply)

              + shielded_instance_config {
                  + enable_integrity_monitoring = (known after apply)
                  + enable_secure_boot          = (known after apply)
                }

              + workload_metadata_config {
                  + node_metadata = (known after apply)
                }
            }

          + upgrade_settings {
              + max_surge       = (known after apply)
              + max_unavailable = (known after apply)
            }
        }

      + release_channel {
          + channel = (known after apply)
        }

      + workload_identity_config {
          + identity_namespace = (known after apply)
        }
    }

  # google_container_node_pool.primary_preemptible_nodes will be created
  + resource "google_container_node_pool" "primary_preemptible_nodes" {
      + cluster             = "my-gke-cluster"
      + id                  = (known after apply)
      + initial_node_count  = (known after apply)
      + instance_group_urls = (known after apply)
      + location            = "us-central1"
      + max_pods_per_node   = (known after apply)
      + name                = "my-node-pool"
      + name_prefix         = (known after apply)
      + node_count          = 1
      + node_locations      = (known after apply)
      + operation           = (known after apply)
      + project             = (known after apply)
      + version             = (known after apply)

      + management {
          + auto_repair  = (known after apply)
          + auto_upgrade = (known after apply)
        }

      + node_config {
          + disk_size_gb      = (known after apply)
          + disk_type         = (known after apply)
          + guest_accelerator = (known after apply)
          + image_type        = (known after apply)
          + labels            = (known after apply)
          + local_ssd_count   = (known after apply)
          + machine_type      = "e2-medium"
          + metadata          = (known after apply)
          + oauth_scopes      = [
              + "https://www.googleapis.com/auth/cloud-platform",
            ]
          + preemptible       = true
          + service_account   = (known after apply)
          + taint             = (known after apply)

          + shielded_instance_config {
              + enable_integrity_monitoring = (known after apply)
              + enable_secure_boot          = (known after apply)
            }

          + workload_metadata_config {
              + node_metadata = (known after apply)
            }
        }

      + upgrade_settings {
          + max_surge       = (known after apply)
          + max_unavailable = (known after apply)
        }
    }

  # google_project_service.project will be created
  + resource "google_project_service" "project" {
      + disable_dependent_services = true
      + disable_on_destroy         = true
      + id                         = (known after apply)
      + project                    = "cluster-project-321522"
      + service                    = "compute.googleapis.com"

      + timeouts {
          + create = "30m"
          + update = "40m"
        }
    }

  # google_service_account.n1x will be created
  + resource "google_service_account" "n1x" {
      + account_id = "osamamohamed"
      + email      = (known after apply)
      + id         = (known after apply)
      + name       = (known after apply)
      + project    = (known after apply)
      + unique_id  = (known after apply)
    }

  # google_storage_bucket.xgenosama-bucket will be created
  + resource "google_storage_bucket" "xgenosama-bucket" {
      + bucket_policy_only          = (known after apply)
      + force_destroy               = true
      + id                          = (known after apply)
      + location                    = "EU"
      + name                        = "xgenosama-bucket4"
      + project                     = (known after apply)
      + self_link                   = (known after apply)
      + storage_class               = "STANDARD"
      + uniform_bucket_level_access = true
      + url                         = (known after apply)
    }