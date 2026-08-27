# Medical Diagnosis Expert System

## Overview

This project implements a **rule-based Medical Diagnosis Expert System using Prolog**.

The system uses a knowledge base containing **facts and rules** to identify possible diseases based on symptoms provided by the user.

> **Note:** This project is developed for educational purposes only and is not intended to replace professional medical diagnosis or medical advice.

---

## Objectives

- Understand the concept of an Expert System.
- Understand knowledge representation using facts and rules.
- Create a domain-specific knowledge base.
- Implement logical inference using Prolog.
- Develop an interactive rule-based diagnosis system.
- Test the system using different combinations of symptoms.

---

## Domain

**Medical Diagnosis**

The system analyzes symptoms and applies predefined rules to determine possible diseases.

### Diseases Covered

1. Flu
2. Common Cold
3. Allergy
4. Migraine
5. Food Poisoning

---

## Symptoms Used

The system checks the following symptoms:

- Fever
- Cough
- Body Pain
- Headache
- Runny Nose
- Sneezing
- Sore Throat
- Itchy Eyes
- Watery Eyes
- Nausea
- Vomiting
- Light Sensitivity
- Stomach Pain
- Diarrhea

---

## Diagnosis Rules

| Disease | Required Symptoms |
|---|---|
| **Flu** | Fever + Cough + Body Pain + Headache |
| **Common Cold** | Cough + Runny Nose + Sneezing + Sore Throat |
| **Allergy** | Sneezing + Runny Nose + Itchy Eyes + Watery Eyes |
| **Migraine** | Headache + Nausea + Vomiting + Light Sensitivity |
| **Food Poisoning** | Stomach Pain + Vomiting + Diarrhea + Fever |

---

## Technologies Used

- **Programming Language:** Prolog
- **Platform:** SWI-Prolog / SWISH
- **Concept:** Rule-Based Expert System
- **Knowledge Representation:** Facts and Rules

---

## Expert System Architecture

```text
             USER
               |
               ↓
       Symptom Questions
               |
               ↓
        Knowledge Base
       ┌───────────────┐
       │     Facts     │
       │     Rules     │
       └───────────────┘
               |
               ↓
       Inference Engine
               |
               ↓
       Diagnosis Result
