% ==========================================
% MEDICAL DIAGNOSIS EXPERT SYSTEM
% ==========================================

:- dynamic symptom/1.

% ------------------------------------------
% ASK USER WHETHER A SYMPTOM IS PRESENT
% ------------------------------------------

ask_symptom(Symptom) :-
    format('Do you have ~w? (yes/no): ', [Symptom]),
    read(Response),
    ( Response == yes ->
        assertz(symptom(Symptom))
    ;
        true
    ).


% ------------------------------------------
% DIAGNOSIS RULES
% ------------------------------------------

% Flu
diagnosis(flu) :-
    symptom(fever),
    symptom(cough),
    symptom(body_pain),
    symptom(headache).

% Common Cold
diagnosis(common_cold) :-
    symptom(cough),
    symptom(runny_nose),
    symptom(sneezing),
    symptom(sore_throat).

% Allergy
diagnosis(allergy) :-
    symptom(sneezing),
    symptom(runny_nose),
    symptom(itchy_eyes),
    symptom(watery_eyes).

% Migraine
diagnosis(migraine) :-
    symptom(headache),
    symptom(nausea),
    symptom(vomiting),
    symptom(light_sensitivity).

% Food Poisoning
diagnosis(food_poisoning) :-
    symptom(stomach_pain),
    symptom(vomiting),
    symptom(diarrhea),
    symptom(fever).


% ------------------------------------------
% DISPLAY DIAGNOSIS
% ------------------------------------------

show_diagnosis :-
    findall(Disease, diagnosis(Disease), Diseases),

    writeln(''),
    writeln('=========================================='),
    writeln('          DIAGNOSIS RESULT'),
    writeln('=========================================='),

    ( Diseases = [] ->
        writeln('No matching diagnosis found.')
    ;
        writeln('Possible diagnosis:'),
        display_diagnoses(Diseases)
    ).


% ------------------------------------------
% DISPLAY MULTIPLE DIAGNOSES
% ------------------------------------------

display_diagnoses([]).

display_diagnoses([Disease | Rest]) :-
    format('- ~w~n', [Disease]),
    display_diagnoses(Rest).


% ------------------------------------------
% START EXPERT SYSTEM
% ------------------------------------------

start :-
    retractall(symptom(_)),

    writeln('=========================================='),
    writeln('      MEDICAL DIAGNOSIS EXPERT SYSTEM'),
    writeln('=========================================='),
    writeln(''),
    writeln('Answer each question with yes. or no.'),
    writeln(''),

    ask_symptom(fever),
    ask_symptom(cough),
    ask_symptom(body_pain),
    ask_symptom(headache),
    ask_symptom(runny_nose),
    ask_symptom(sneezing),
    ask_symptom(sore_throat),
    ask_symptom(itchy_eyes),
    ask_symptom(watery_eyes),
    ask_symptom(nausea),
    ask_symptom(vomiting),
    ask_symptom(light_sensitivity),
    ask_symptom(stomach_pain),
    ask_symptom(diarrhea),

    show_diagnosis.
