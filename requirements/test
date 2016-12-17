Feature: basket

	# POST /baskets
	# GET, PUT, DELETE /baskets/{basket_id}

	Background:
		Given each basket belongs to the "baskets"

	Scenario: new basket
		When I submit <products> to the basket
			|name|qt|
		Then I should see the created basket
		And I should be prompted to order
		And I should have the option to view my basket

	Scenario: update basket
		Given I have a basket with products
		When I update the basket with new <products>
			|name|qt|
		Then I should see the updated basket
		And I should be prompted to order
		And I should have the option to view my basket

	Scenario: retrieve basket
		Given I have a basket with products
		When I retrieve the basket by it's id
		Then I should see it's contents
		And I should be prompted to order
		And I should have the option to view my basket

