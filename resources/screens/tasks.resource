*** Settings ***
Documentation     Elementos e ações da tela de tarefas

Library        AppiumLibrary

*** Variables ***

${newtask_input}    xpath=//*[contains(@text,"nova tarefa")]
${create_button}    xpath=//*[@resource-id="createTask"]

*** Keywords ***
Create a new task
        [Arguments]    ${task_name}

        Wait Until Element Is Visible   ${newtask_input}    10

        Input Text  ${newtask_input}    ${task_name}
        Click Element   ${create_button}

Should have a task
        [Arguments]    ${task_name}

        Wait Until Element Is Visible  
        ...    xpath=//*[@resource-id="taskText"][@text="${task_name}"]
        ...    10

Remove task by name
        [Arguments]    ${task_name}

        Click Element   xpath=//*[@text="${task_name}"]/../..//*[@resource-id="removeTask"]

        ${button}    Set Variable       xpath=//android.widget.Button[@text="SIM"]

        Wait Until Element Is Visible   ${button}    5
        Click Element   ${button}
Finish task
        [Arguments]    ${task_name}

        Click Element   xpath=//*[@text="${task_name}"]/..
task should be done
    [Arguments]    ${task_name}
        
    Wait Until Element Is Visible   xpath=//*[@text="${task_name}"]/..//android.widget.ImageView 

