module Resque
  module Plugins
    module Etl

      def something(args1, arg2)
        # something
      end

      def tenant_settings
        settings = []
        Tenant.all.each do |t|
          ts = t.tenant_etl_setting
          gs = t.good_data_etl_setting
          settings.push(
            {
              name: t.name,
              schema_name: t.schema_name,
              resque_enabled: ts.enabled,
              max_failed_data_sources: ts.max_failed_data_sources,
              good_data_enabled: gs.enabled,
              domain: gs.domain_url,
              api_user: gs.api_user,
              api_password: gs.api_password,
              project_id: gs.project_hash_id,
              schedule_id: gs.schedule_hash_id
            }
          )
        end
        settings
      end

    end
  end
end
