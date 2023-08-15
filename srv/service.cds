using { mtademo as md} from '../db/schema';

service empsrv @(requires: 'authenticated-user') {
    entity MyEmployeeData
    @(restrict:[
       { grant:'READ',
        to:'EMPLOYEE',
        where:'email = $user.mailId'  },
        {
            grant: ['READ','WRITE'],
            to: 'MANAGER'
        }
    ])
    
     as projection on md.Employee;
}