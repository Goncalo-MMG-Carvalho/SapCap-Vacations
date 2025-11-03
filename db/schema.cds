using { cuid, managed } from '@sap/cds/common';
namespace db;



entity Employee : cuid {
    name: String;
    email: String @assert.format : 'email';
}

entity VacationRequest : cuid {
    startDate: Date @mandatory;
    endDate: Date @mandatory;
    motive: String;
    status: Association to ApprovalStatus;
    name: String @mandatory; 
    submitedBy: Association to Employee on $self.name = submitedBy.name;
    submitionDate: Date;
}

entity ApprovalStatus : cuid {
    description: String;
}