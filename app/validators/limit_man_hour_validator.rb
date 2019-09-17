
class LimitManHourValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
        true
        # HoursRecord.where(profile_id: 6, day: (Time.now.midnight - 6.day)..Time.now.midnight).sum("man_hour") -> Ultima semana
        # HoursRecord.where(profile_id: 6, day: "2019-08-07").sum("man_hour")
        extra_hours = CONFIG[:max_daily_extra_hours]
        day_available_hours = CONFIG[:max_daily_working_hours] + CONFIG[:max_daily_extra_hours] - \
                              HoursRecord.where(profile_id: record.profile_id, day: record.day).where.not(status: ["rep_aut_rejected", "rep_rejected"]).where.not(id: record.id).sum("man_hour")
        week_available_hours = CONFIG[:max_week_working_hours] - \
                              HoursRecord.where(profile_id: record.profile_id, day: (record.day - CONFIG[:max_week_working_days].day)..record.day).where.not(status: ["rep_aut_rejected", "rep_rejected"]).where.not(id: record.id).sum("man_hour")
        available_hours = [day_available_hours,week_available_hours].min

        if value <= available_hours
            true
        else
            if day_available_hours < week_available_hours
                message = "Limite maximo de horas diárias foi excedido"
            else
                message = "Limite maximo de horas semanais foi excedido"
            end
            record.errors[attribute] << (options[:message] || message)
            false
        end
    end
end
