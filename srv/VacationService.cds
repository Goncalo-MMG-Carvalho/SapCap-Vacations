using db from '../db/schema';

service VacationService {
    @odata.draft.enabled
    entity Employee as projection on db.Employee;
    @odata.draft.enabled
    entity VacationRequest as projection on db.VacationRequest;
    @odata.draft.enabled
    entity ApprovalStatus as projection on db.ApprovalStatus;
        

}