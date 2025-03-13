# Todo App s Docker

Toto je jednoduchá webová aplikácia To-Do zoznamu, ktorá beží v Docker kontajneroch. Aplikácia pozostáva z troch hlavných komponentov, každý bežiaci vo vlastnom kontajneri.

## Komponenty aplikácie

1. **Frontend (React)** - Používateľské rozhranie
   - Port: 3000
   - Kontajner: todo-frontend
   - Technológie: React.js

2. **Backend (Node.js)** - API server
   - Port: 5000
   - Kontajner: todo-backend
   - Technológie: Node.js, Express.js
   - Komunikácia s MongoDB cez pripojovací reťazec: `mongodb://mongo:27017/tododb`

3. **Databáza (MongoDB)** - Úložisko dát
   - Port: 27017
   - Kontajner: todo-mongo
   - Technológie: MongoDB
   - Trvalé dáta uložené vo zväzku: mongo-data

## Požiadavky

- Docker
- Docker Compose

## Inštalácia a spustenie

1. Pripravte aplikáciu:

```bash
chmod +x prepare-app.sh
./prepare-app.sh
```

2. Spustite aplikáciu:

```bash
chmod +x start-app.sh
./start-app.sh
```

3. Otvorte aplikáciu vo webovom prehliadači:
   - [http://localhost:3000](http://localhost:3000)

4. Pre ukončenie aplikácie:

```bash
chmod +x end-app.sh
./end-app.sh
```

## Funkcionalita

Aplikácia umožňuje:
- Pridávať nové úlohy do zoznamu
- Označovať úlohy ako dokončené/nedokončené
- Vymazávať úlohy

Dáta sú uložené v MongoDB databáze a zachované medzi reštartmi pomocou Docker zväzku.

## Prepojenie služieb

- Frontend komunikuje s backendom cez HTTP požiadavky na adresu definovanú v premennej prostredia `REACT_APP_API_URL`.
- Backend komunikuje s MongoDB databázou cez pripojovací reťazec definovaný v premennej prostredia `MONGO_URI`.

## Štruktúra projektu

```
todo-app/
├── docker-compose.yml
├── prepare-app.sh
├── start-app.sh
├── end-app.sh
├── README.md
├── backend/
│   ├── Dockerfile
│   ├── package.json
│   └── server.js
└── frontend/
    ├── Dockerfile
    ├── package.json
    ├── public/
    │   └── index.html
    └── src/
        ├── App.js
        ├── App.css
        ├── index.js
        └── index.css
```