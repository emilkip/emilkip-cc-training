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
	
coreo_aws_advisor_alert "cc-emilkip-training" do
	action :define
	service :elb
	display_name "ELB Object Health Check"
	description "Load balancer health check"
	category "Inventory"
	suggested_action "None."
	level "Informational"
	objectives ["load_balancers"]
	audit_objects ["load_balancer_description.health_check.interval"]
	operators [">"]
	alert_when [120]
end

coreo_aws_advisor_elb "cc-emilkip-training" do
	action :advise
	alerts ${ELB_ALERTS}
	regions ${ELB_REGIONS}
end