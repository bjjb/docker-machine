Feature: Listing known machines

  An array of the available docker machines should be available. Each element
  in the array should be a Machine.

  Scenario: Listing the available machines
    Given a machine called "default"
    And a script containing:
      """
      require 'docker-machine'
      raise unless DockerMachine['default']
      """
    When I run the script
    Then the exit code is 0
