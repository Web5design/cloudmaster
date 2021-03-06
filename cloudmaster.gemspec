# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{cloudmaster}
  s.version = "0.1.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["cchayden", "vadimj", "Mick Staugaard"]
  s.date = %q{2009-04-22}
  s.default_executable = %q{cloudmaster}
  s.email = %q{mick@staugaard.com}
  s.executables = ["cloudmaster"]
  s.files = ["VERSION.yml", "bin/cloudmaster", "lib/AWS", "lib/AWS/AWS.rb", "lib/AWS/EC2.rb", "lib/AWS/S3.rb", "lib/AWS/SimpleDB.rb", "lib/AWS/SQS.rb", "lib/aws_context.rb", "lib/basic_configuration.rb", "lib/clock.rb", "lib/factory.rb", "lib/file_logger.rb", "lib/inifile.rb", "lib/instance_logger.rb", "lib/logger_factory.rb", "lib/MockAWS", "lib/MockAWS/clock.rb", "lib/MockAWS/EC2.rb", "lib/MockAWS/S3.rb", "lib/MockAWS/SimpleDB.rb", "lib/MockAWS/SQS.rb", "lib/OriginalAWS", "lib/OriginalAWS/AWS.rb", "lib/OriginalAWS/EC2.rb", "lib/OriginalAWS/S3.rb", "lib/OriginalAWS/SimpleDB.rb", "lib/OriginalAWS/SQS.rb", "lib/periodic.rb", "lib/RetryAWS", "lib/RetryAWS/EC2.rb", "lib/RetryAWS/S3.rb", "lib/RetryAWS/SimpleDB.rb", "lib/RetryAWS/SQS.rb", "lib/SafeAWS", "lib/SafeAWS/EC2.rb", "lib/SafeAWS/S3.rb", "lib/SafeAWS/SimpleDB.rb", "lib/SafeAWS/SQS.rb", "lib/string_logger.rb", "lib/sys_logger.rb", "lib/user_data.rb", "app/active_set_factory.rb", "app/active_set_none.rb", "app/active_set_queue.rb", "app/active_set_s3.rb", "app/configuration.rb", "app/default-config.ini", "app/ec2_image_enumerator.rb", "app/ec2_instance_enumerator.rb", "app/instance.rb", "app/instance_pool.rb", "app/named_queue.rb", "app/policy.rb", "app/policy_daytime.rb", "app/policy_factory.rb", "app/policy_fixed.rb", "app/policy_job.rb", "app/policy_limit.rb", "app/policy_manual.rb", "app/policy_resource.rb", "app/pool_configuration.rb", "app/pool_manager.rb", "app/pool_runner.rb", "app/reporter.rb", "app/status_parser_factory.rb", "app/status_parser_lifeguard.rb", "app/status_parser_std.rb", "test/aws-config.ini", "test/cloudmaster-tests.rb", "test/configuration-test.rb", "test/daytime-policy-tests.rb", "test/enumerator-test.rb", "test/fixed-policy-tests.rb", "test/instance-pool-test.rb", "test/instance-test.rb", "test/job-policy-test.rb", "test/manual-policy-tests.rb", "test/named-queue-test.rb", "test/resource-policy-tests.rb", "test/suite", "test/test-config.ini"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/staugaard/cloudmaster}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib", "app"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Creates, terminates, and monitors Amazon EC2 instances. Creates more instance to meet increased demand, and terminates them when they are no longer needed. Any number of pools of instances may be managed. Provides periodic status reports. Three policies are provided: a fixed size pool policy, a job-oriented batch policy, and a resource-limited stateful policy. The user can define additional policies. To get started, see http://code.google.com/p/cloudmaster/wiki/Introduction}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<daemons>, [">= 1.0.10"])
    else
      s.add_dependency(%q<daemons>, [">= 1.0.10"])
    end
  else
    s.add_dependency(%q<daemons>, [">= 1.0.10"])
  end
end
