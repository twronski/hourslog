
class CreationDateValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
        if record.new_record? 
            unless DateTime.now < (value + CONFIG[:max_report_date_delay_days])
                record.errors[attribute] << (options[:message] || "Data não pode ser mais antiga do que \
                                                                  #{CONFIG[:max_report_date_delay_days]} dias")
            end
        else
            unless record.created_at < (value + CONFIG[:max_report_date_delay_days])
                record.errors[attribute] << (options[:message] || "Data não pode ser mais antiga do que \
                                                                  #{CONFIG[:max_report_date_delay_days]} dias \
                                                                  da criaçao do relatório: #{record.created_at}")
            end
        end
    end
end
