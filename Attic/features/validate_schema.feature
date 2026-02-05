Feature: Validate YAML using rkwalify

  Scenario: Valid YAML passes validation
    Given a YAML file "test/data/users-guide/address_book.yaml"
    When I validate it with the schema "test/data/users-guide/address_book.schema.yaml"
    Then the validation should pass

address_book.yaml  
  Scenario: Invalid YAML fails validation
    Given a YAML file "spec/fixtures/invalid.yml"
    When I validate it with the schema "spec/fixtures/schema.yml"
    Then the validation should fail
