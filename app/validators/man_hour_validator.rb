
class ManHourValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
        false
    end
end
