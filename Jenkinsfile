pipeline {
  agent any

  stages {
    stage('Create project') {
      steps {
        deleteDir() // clean up workspace
        checkout([$class: 'GitSCM', branches: [[name: '*/main']],
            url: 'https://github.com/dhanireddy10/Jenkins_autopipe.git']]])
            sh 'pwd'
            sh 'vivado -mode tcl -source create_project.tcl'
      }
    }
    stage('Simulation') {
      steps {
        sh 'vivado -mode batch -source run_simulation.tcl'
      }
    }
    stage('Synthesis') {
      steps {
        sh 'vivado -mode batch -source run_synthesis.tcl'
      }
    }
    stage('Implementation') {
      steps {
        sh 'vivado -mode batch -source run_implementation.tcl'
      }
    }
    stage('Bitstream generated') {
      steps {
        sh 'vivado -mode batch -source generate_bitstream.tcl'
      }
    }
    
  }
}
