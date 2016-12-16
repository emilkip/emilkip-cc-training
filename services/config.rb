## This file was auto-generated by CloudCoreo CLI
	## This file was automatically generated using the CloudCoreo CLI
	##
	## This config.rb file exists to create and maintain services not related to compute.
	## for example, a VPC might be maintained using:
	##
	## coreo_aws_vpc_vpc "my-vpc" do
	##   action :sustain
	##   cidr "12.0.0.0/16"
	##   internet_gateway true
	## end
	##
	

## EC2
coreo_aws_advisor_alert "cc-emilkip-ec2-alert" do
	action :define
	service :ec2
	display_name "EC2 check"
	description "EC2 size and encryption check for snapshot"
	category "Inventory"
	suggested_action "None."
	level "Informational"
	objectives ["snapshots", "snapshots"]
	audit_objects ["snapshot_set.volume_size", "snapshot_set.encrypted"]
	operators [">", "=~"]
	alert_when [8, false]
end

coreo_aws_advisor_ec2 "cc-emilkip-advisor_ec2" do
	action :advise
	alerts ${EC2_ALERTS}
	regions ${EC2_REGIONS}
end