# Private Information Retrieval (PIR) Demo using SHEEP

This project implements a Private Information Retrieval protocol using the SHEEP homomorphic encryption platform.

## Files

- `hw4-3-pir_sheep.py` - Main PIR demo script (uses SHEEP-master library)
- `SHEEP-master/` - SHEEP framework source code (backend and frontend)

## Prerequisites

1. Install Python dependencies:
   ```bash
   pip install -e SHEEP-master/frontend
   pip install requests
   ```

2. Build and run the SHEEP server from SHEEP-master. You have two options:

### Option 1: Using Docker (Recommended)

From the `SHEEP-master` directory:
```bash
cd SHEEP-master
docker-compose build
docker-compose up sheep-server
```

The server will run on `http://localhost:34568/SheepServer`

### Option 2: Building Locally

Follow the instructions in `SHEEP-master/README.md` to:
1. Install dependencies (cpprestsdk, HE libraries like SEAL, HElib, TFHE)
2. Build the backend:
   ```bash
   cd SHEEP-master/backend
   mkdir build
   cd build
   cmake ../
   make all
   ```
3. Run the server:
   ```bash
   ./bin/run-sheep-server
   ```

## How to Run

1. **Start the SHEEP server** (from SHEEP-master) using one of the options above. Keep it running.

2. **Run the PIR demo** in a separate terminal:
   ```bash
   python hw4-3-pir_sheep.py
   ```

The demo will retrieve each element from the database `D = [2, 4, 6, 8, 10, 1, 3]` using encrypted selection vectors and display the results showing the retrieved value, expected value, and whether each retrieval was correct.

## What It Does

The demo demonstrates a PIR protocol where:
- Server holds database `D = [2, 4, 6, 8, 10, 1, 3]`
- Client retrieves each element using encrypted selection vectors
- Server computes homomorphic dot product: `Σ(d[j] × s[j])`
- Uses the actual SHEEP-master backend server for homomorphic encryption operations

## Note

The code uses the actual SHEEP-master framework. The client script (`hw4-3-pir_sheep.py`) imports `pysheep` from `SHEEP-master/frontend` and communicates with the SHEEP server running on port 34568.

