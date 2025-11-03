using db from '../db/schema';

service VacationService {
    entity Employee as projection on db.Employee;
    entity VacationRequest as projection on db.VacationRequest;
    entity ApprovalStatus as projection on db.ApprovalStatus;
        

}