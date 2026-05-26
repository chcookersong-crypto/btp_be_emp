using emp.app as ea from '../db/employee-dbmodel';

service EmployeeService {
    entity Employee   as select from ea.EMPLOYEE;
    entity Department as select from ea.DEPARTMENT
}

annotate EmployeeService.Employee with @(UI: {LineItem: [
    {
        $Type: 'UI.DataField',
        Value: NAME,
    },
    {
        $Type: 'UI.DataField',
        Value: EMAIL_ID,
    },
    {
        $Type: 'UI.DataField',
        Value: DEPARTMENT,
    },
    {
        $Type: 'UI.DataField',
        Value: createdBy,
    },
    {
        $Type: 'UI.DataField',
        Value: createdAt,
    }
], }) {
    NAME       @title: '姓名';
    EMAIL_ID   @title: '电子邮箱';
    DEPARTMENT @title: '部署';
    createdBy  @title: '创建者';
    createdAt  @title: '创建时间'

};
