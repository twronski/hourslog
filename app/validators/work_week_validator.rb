
class WorkWeekValidator < ActiveModel::EachValidator
    def validate(record)
        unless HoursRecord.where(user_id: record.user_id, day: (record.day - CONFIG[:max_week_working_days].day)..record.day).where.not(status: ["ep_aut_rejected", "rep_rejected"]).distinct.count('day') < CONFIG[:max_week_working_days]
            record.errors[:day] << 'É obrigatório um dia de descanso semanal'
        #HoursRecord.where(user_id: 3, day: (Time.now.midnight - 6.day)..Time.now.midnight).where.not(status: ["rep_rejected"]).distinct.count("day")
    end
end