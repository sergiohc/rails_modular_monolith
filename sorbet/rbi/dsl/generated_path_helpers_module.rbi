# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `GeneratedPathHelpersModule`.
# Please instead update this file by running `bin/tapioca dsl GeneratedPathHelpersModule`.


module GeneratedPathHelpersModule
  include ::ActionDispatch::Routing::UrlFor
  include ::ActionDispatch::Routing::PolymorphicRoutes

  sig { params(args: T.untyped).returns(String) }
  def new_rails_conductor_inbound_email_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def new_rails_conductor_inbound_email_source_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_blob_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_blob_representation_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_blob_representation_proxy_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_conductor_inbound_email_incinerate_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_conductor_inbound_email_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_conductor_inbound_email_reroute_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_conductor_inbound_email_sources_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_conductor_inbound_emails_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_direct_uploads_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_disk_service_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_info_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_info_properties_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_info_routes_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_mailers_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_mailgun_inbound_emails_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_mandrill_inbound_emails_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_mandrill_inbound_health_check_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_postmark_inbound_emails_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_relay_inbound_emails_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_representation_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_sendgrid_inbound_emails_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_service_blob_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_service_blob_proxy_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_storage_proxy_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def rails_storage_redirect_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def root_path(*args); end

  sig { params(args: T.untyped).returns(String) }
  def update_rails_disk_service_path(*args); end
end
