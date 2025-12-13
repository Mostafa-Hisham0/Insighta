# Insighta

Insighta is a web-based AI platform designed to help early-stage founders and small teams move from startup ideas to real execution. Instead of focusing on theory, Insighta helps users validate ideas, make early business decisions, and handle common startup tasks like hiring and marketing in a simple and practical way, with a strong focus on the local Egyptian market.

---

## Project Motivation

Many people have startup ideas, but most of them get stuck because they don’t know how to test those ideas or where to begin. Small businesses also struggle with hiring, marketing, and decision-making due to limited resources and lack of experience. Insighta was built to bridge this gap by acting as an AI-powered assistant that guides users through validation, planning, and early execution without requiring deep business or technical knowledge.

---

## Core Features

- **Startup Validation & Business Assistant**
  - Conversational AI that helps users validate startup ideas
  - Guides pricing, target customers, and next steps
  - Focused on realistic and actionable advice

- **HR AI Module**
  - Automated CV parsing and candidate scoring
  - Explainable ranking of applicants
  - Supports automated technical screening using speech-to-text

- **Marketing Recommendation Module**
  - Suggests marketing strategies based on business type, location, and budget
  - Focused on local market relevance (Egypt)

- **User & Business Management**
  - Secure authentication and user accounts
  - Support for multiple businesses under one user

---

## System Overview

Insighta is built as a modular web application where each feature is connected through a shared business context. User authentication is kept separate, while AI modules (HR, marketing, and business assistant) work using the same business information to keep outputs consistent and relevant.

---

## Tech Stack

- **Frontend:** Flutter (Web)
- **Backend:** FastAPI (Python)
- **AI / ML:** NLP models, Speech-to-Text (Whisper or similar), LLM-based assistant
- **Containerization:** Docker
- **Database:** PostgreSQL

---

## Project Status

This project is currently under active development.  
Completed and in-progress work includes:
- Initial system architecture and database schema
- CV parsing and HR model early implementation
- Business assistant model structure and dataset research
- UI design and backend service setup

---

## Risks & Limitations

- External data sources (such as Reddit API) are not guaranteed
- Limited computational resources require model optimization
- Integrating multiple AI services may impact performance
- Early model outputs may require refinement through user feedback

These risks are being handled through staged development, fallback datasets, and continuous testing.
