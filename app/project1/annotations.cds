using SalesOrderService as service from '../../srv/Service';

annotate service.SalesOrders with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : customerNo,
            Label : 'customerNo',
        },
        {
            $Type : 'UI.DataField',
            Value : description,
            Label : 'description',
        },
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : overBookingInd,
            Label : 'overBookingInd',
        },
        {
            $Type : 'UI.DataField',
            Value : salesorg,
            Label : 'salesorg',
        },
        {
            $Type : 'UI.DataField',
            Value : totalQuantity,
            Label : 'totalQuantity',
        },
    ]
);
annotate service.SalesOrders with @(
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View',
    },
    UI.LineItem #tableView : [
    ],
    UI.SelectionPresentationVariant #tableView1 : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View 1',
    }
);
annotate service.Customers with @(
    UI.LineItem #tableView : [
        {
            $Type : 'UI.DataField',
            Value : customerNo,
            Label : 'customerNo',
        },{
            $Type : 'UI.DataField',
            Value : customerName,
            Label : 'customerName',
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : 'addresses/@Communication.Contact#contact',
            Label : 'Contact Name',
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : 'addresses/@Communication.Contact#contact1',
            Label : 'Contact Name',
        },],
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View Customers',
    }
);
annotate service.Addresses with @(
    Communication.Contact #contact : {
        $Type : 'Communication.ContactType',
        fn : contact_email,
    }
);
annotate service.Addresses with @(
    Communication.Contact #contact1 : {
        $Type : 'Communication.ContactType',
        fn : contact_phonenumber,
    }
);
annotate service.SalesOrders with @(
    UI.SelectionFields : [
        salesorg,
        customerNo,
    ]
);
annotate service.SalesOrders with {
    salesorg @Common.Label : 'salesorg'
};
annotate service.SalesOrders with {
    customerNo @Common.Label : 'customerNo'
};
