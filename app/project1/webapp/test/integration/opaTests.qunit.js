sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'project1/test/integration/FirstJourney',
		'project1/test/integration/pages/SalesOrdersList',
		'project1/test/integration/pages/SalesOrdersObjectPage',
		'project1/test/integration/pages/SalesOrderItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, SalesOrdersList, SalesOrdersObjectPage, SalesOrderItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSalesOrdersList: SalesOrdersList,
					onTheSalesOrdersObjectPage: SalesOrdersObjectPage,
					onTheSalesOrderItemsObjectPage: SalesOrderItemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);