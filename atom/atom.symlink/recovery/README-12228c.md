# Clean Frontend

## Meetings:
1. 0202-2021: 14:50 - 15:30, meeting 1
2. 0526-2021: 14:00 - 16:00, meeting 2


## ToDo
1. Finding examples with clean architecture in frontend
  - paper  <- Not found yet.
  - pure frontend example <- [done](#examples)
  - frontend with duplicated domain model of backend <- Not found yet.
  - Map essential-todos diagram to clean architecture.
  - Fix clean architecture diagram for react-with-clean-architecture (adding frontend persistence)

1. Implement Example.
  - ezKanban
    - Organize the folder structure. <- Done
    - Add a new adapter layer.  <- Doing
    - Ask Frontend developers for opinion
      - Kanban Team
      - Wei from LINE ßcorp
      - Ashley from Facebook
      - Shannon from Pinterest
  - Simplest Example

1. Different models for clean architectures.
  - fate client with thin server
  - thin client, fate server
  - between both.

1. Read Items:
  - DCI: Data Context Interaction
    - The DCI Architecture: A New Vision of Object-Oriented Programming
    - A comparison of DCI and SOA, in Java.
    - An Empirical Study on Code Comprehension: Data Context Interaction
Compared to Classical Object Oriented
  - DDD
  - Notes on the synthesis of form
  - Conversation with Alexander

## Done
1. Finding examples with clean architecture in frontend
  - pure frontend example <- [done](#examples)

2. Implement Example.
  - ezKanban
    - CreateProjectUseCase and GetDashBoardUseCase, Team entity, Team Repository implemented.
    - Add Presenter layer to CreateProjectUseCase and GetDashBoardUseCase  <- Done
    - Divide redux into "View model" and "Domain Model", two parts.  <- Done
      - Possibility of two store object? from Regina

## Basic concept
- 是否可以在 Frontend 引入 Aggregate 及 Repository 的概念，然後讓 React 透過 Aggregate 及 Repository 去存取 Redux(Frontend DB)
- 將 Backend 已有的 Aggregate 、Repository Code gen 出 Frontend 使用的 Javascript 版本）
  - Works on React with Redux
  - Also Works on Vue with Vuex and Angular with ...
  - Works on any Javascript.
- 透過畫出 State Machine，自動產生測試
  - Reduce the problem of writing test to drawing State Machine.

## Bounded Context
  - Team       
  - Account    <-- OIS
    - RBAC     <-- OIS
  - Board      <-- Kanban
  - Workflow   <-- Kanban
  - Card       <-- Kanban
  - Timelog    <-- OIS

## How to apply clean architecture in frontend?

### Examples
#### essential-todos
- [Sample Code](example/clean_architecture/frontend/essential-todos)
- Language/Framework: JS/React
- Architecture:
![essential-todos-architecture](img/clean_architecture/frontend/essential-todos/architecture.png)

- Tools in Clean Architecture:
  - Presentation (React)
    - Use data in Redux directly.
  - Application: Redux
    - UseCase Layer: Middleware in Redux
    - Entity Layer: Reducer in Redux
  - Infrastructure (services): Axios (for API calls), Log
    - injected in to Middleware.

- Video Link: https://www.youtube.com/watch?v=qOH2X5hciiA
- Github: https://github.com/progressive-dev/essential-todos


#### react-with-clean-architecture
- [Sample Code](example/clean_architecture/frontend/react-with-clean-architecture)
- Language/Framework: TS/React

- Architecture:
![react-with-clean-architecture-architecture](img/clean_architecture/frontend/react-with-clean-architecture/architecture.png)
```
src
├─ adapters
│  ├─ infrastructures: infra operations, e.g. http get/post, storage I/O.
│  ├─ presenters: execute the injected use cases to get the resulting aggregates.
│  └─ repositories: http connection to backend server
├─ domains
│  ├─ aggregates: arregate root
│  ├─ entities: entities contained by aggregate root.
│  ├─ useCases: application logics, update status to repositories and build aggregates with the responsed dto from repositories.
│  │  └─ repository-interfaces
│  └─ dto: data transform object between use cases and repositories.
└─ frameworks
   └─ web: React
      ├─ di: Dependency Injection. This module generates useCases, presenters, repositories, etc., do the needed dependency injection, and export the generated presenters.
      ├─ components: React Components.
      ├─ hooks: Save frontend state with Recoil.js
      └─ vm: View Model.
```

- Github Link: https://github.com/falsy/react-with-clean-architecture

#### react-clean-architecture
- [Sample code](example/clean_architecture/frontend/react-clean-architecture)
- Language/Framework: TS/React

- Communication Flow:
![Communication Flow](img/clean_architecture/frontend/react-clean-architecture/communication-flow.jpg)
  - Entity: Application independent business rules
  - Interactor (UseCase): Application-specific business rules

  - Adapter: Glue code from/to Interactors and Presenter, most of the time implementing a framework-specific behaviour. e. g.: We have to connect Interactor with react container, to do so, we have to connect Interactor with redux (framework) and then connect redux to container components.
    - Actually redux here.
    - The entry point of core module.
    - Use cases are actually invoked here, in reducer.
    - Get the current state from redux, invoke use cases, and store the resulting entities back to redux.

  - Presenter: Maps data from/to Adapter to/from Components.
    - The root component in React, which renders all other child components as pure view components.
    - Invokes logical operations through adapter(Redux reducer)
    - Read the data from redux and pass to child components as props.

  - Components: Simplest possible unit of presentation. Any mapping, conversion, MUST be done by the Presenter.
    - Pure react component for view.
    - No any logic
    - All events functions are invoking the functions from the parent(Presenter), eventually invoked a usecase.

![Communication Flow2](img/clean_architecture/frontend/react-clean-architecture/communication-flow_2.jpg)

- Layer Architecture:
![Layer Architecture](img/clean_architecture/frontend/react-clean-architecture/architecture.jpg)
