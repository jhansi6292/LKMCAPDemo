namespace my.salesorder;

entity SalesOrders {
  key ID                     : String(10);
      description            : String50_JJ not null;
      salesorg               : String(4);
      customerNo             : String(10);
      virtual totalQuantity  : Decimal(10, 2);
      virtual overBookingInd : Boolean;
      customer               : Association to Customers //unmanaged association
                                 on customer.customerNo = customerNo;
      items                  : Composition of many SalesOrderItems //managed composition (to many)
                                 on items.salesOrder = $self;
}

entity SalesOrderItems {
  key salesOrder : Association to one SalesOrders; //managed association (to one)
  key item       : Integer;
      material   : String(18);
      quantity   : Decimal(10, 2); //Precision , scale
}

entity Customers {
  key customerNo   : String(10);
      customerName : String50_JJ;
      addresses    : Composition of one Addresses; //managed composition (to one)
}

entity Addresses {
  key ID      : Integer;
      city    : String50_JJ;
      country : String(10);
      contact : ContactType;
}

type ContactType {
  phonenumber : String(10);
  email       : String50_JJ;
}

type String50_JJ : String(50);
