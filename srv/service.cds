using { mtademo as md} from '../db/schema';

service empsrv {
    entity MyEmployeeData as projection on md.Employee;
}