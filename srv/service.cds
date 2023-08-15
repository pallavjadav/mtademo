using { mtademo as md} from '../db/schema';

service empsrv @(requires: 'authenticated-user') {
    entity MyEmployeeData as projection on md.Employee;
}