using my.salesorder as my from '../db/data-model';

service SalesOrderService //@(path:'/SalesOrderService'){
@(requires:'authenticated-user',path:'/SalesOrderService'){

    @restrict:[{grant:'READ', to:'Viewer'},
               {grant:['READ','CREATE','DELETE','UPDATE'], to:'Manager', where:'salesorg=$user.SalesOrg'}]
    
    entity SalesOrders     as projection on my.SalesOrders;
    entity SalesOrderItems as projection on my.SalesOrderItems;
    entity Customers       as projection on my.Customers;
    entity Addresses       as projection on my.Addresses;

}
