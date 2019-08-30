module HoursRecordsHelper
    STATUSES_HASH = {"rep_under_analysis" => {"message" =>'Em Análise', "badge" => "badge badge-primary"},
        "rep_under_revision" =>  {"message" =>'Em revisão', "badge" => "badge badge-warning"}, 
        "rep_aut_approved" => {"message" => 'Aprovado Aut', "badge" => "badge badge-success"}, 
        "rep_approved" => {"message" => 'Aprovado', "badge" => "badge badge-success"}, 
        "rep_aut_rejected" => {"message" => 'Reprovado Aut', "badge" => "badge badge-danger"}, 
        "rep_rejected"  => {"message" => 'Reprovado', "badge" => "badge badge-danger"}}

end
