Feature: rkwalify CLI

  Scenario: Validate a valid YAML file via CLI
    When I run `rkwalify -s spec/fixtures/schema.yml spec/fixtures/valid.yml`
    Then the exit status should be 0

  Scenario: Validate an invalid YAML file via CLI
    When I run `rkwalify -s spec/fixtures/schema.yml spec/fixtures/invalid.yml`
    Then the exit status should not be 0
