
class WorkWeekValidator < ActiveModel::Validator
    @reject_statuses = ["rep_aut_rejected", "rep_rejected"]

    def validate(record)
       
        # look for consecutive days before report date
        days_before = 0
        i = 0
        loop do
            i += 1
            if HoursRecord.where(profile_id: record.profile_id, day: (record.day - i.day)).where.not(status: @reject_statuses).empty?
               break
            else
                days_before += 1 
            end
        end

        # look for consecutive days after report date
        days_after = 0
        i = 0
        loop do
            i += 1
            if HoursRecord.where(profile_id: record.profile_id, day: (record.day + i.day)).where.not(status: @reject_statuses).empty?
               break
            else
                days_after += 1 
            end
        end

        unless (days_before + days_after) <= CONFIG[:max_week_working_days]
            record.errors[:day] << "É obrigatório um dia de descanso semanal before #{days_before} after #{days_after}"
        end
    end
end