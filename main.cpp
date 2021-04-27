#include <bits/stdc++.h>

#define endl '\n'
using namespace std;
vector<int> available;
vector<vector<int>> maximum, allocation, need; /// maximum[1][1]+=1;
int numberOfProcess, numberOfResources;

void showCurrentState() {
    cout << "--------------------------------------------------------------------------------" << endl;
    cout << "Process# \t Allocation \t Maximum \t need \t Available\n";
    for (int i = 0; i < numberOfProcess; ++i) {
        cout << 'P' << i << "\t\t\t\t";
        for (int j = 0; j < numberOfResources; ++j) {
            cout << allocation[i][j] << ' ';
        }
        cout << " \t\t";
        for (int j = 0; j < numberOfResources; ++j) {
            cout << maximum[i][j] << ' ';
        }
        cout << "\t\t";

        for (int j = 0; j < numberOfResources; ++j) {
            cout << need[i][j] << ' ';
        }
        if (i == 0) {
            cout << "\t\t";
            for (int j = 0; j < numberOfResources; ++j) {
                cout << available[j] << ' ';
            }
        }
        cout << endl;
    }
    cout << "--------------------------------------------------------------------------------" << endl;
}

void clearData() {
    need.clear();
    maximum.clear();
    allocation.clear();
    available.clear();
}

void setSize() {
    available.resize(numberOfResources);
    maximum.resize(numberOfProcess, vector<int>(numberOfResources));
    allocation.resize(numberOfProcess, vector<int>(numberOfResources));
    need.resize(numberOfProcess, vector<int>(numberOfResources));
}

void takeInitialInput() {
    clearData();
    cout << "Enter number of process: ";
    cin >> numberOfProcess;
    cout << "Enter number of resources: ";
    cin >> numberOfResources;
    setSize();
    for (int i = 0; i < numberOfResources; ++i) {
        cout << "Enter available resources for R" << i << ": ";
        cin >> available[i];
    }
    cout << endl;
    for (int i = 0; i < numberOfProcess; ++i) {
        cout << "Maximum for P" << i << " :" << endl;
        for (int j = 0; j < numberOfResources; ++j) {
            cin >> maximum[i][j];
        }
    }
    for (int i = 0; i < numberOfProcess; ++i) {
        cout << "Allocation for P" << i << " :" << endl;
        for (int j = 0; j < numberOfResources; ++j) {
            cin >> allocation[i][j];
            need[i][j] = maximum[i][j] - allocation[i][j];
        }
    }

}

void toLower(string &s) {
    for (char &c:s)c = tolower(c);
}

void execProcess(int processIndex) {
    for (int i = 0; i < numberOfResources; ++i) {
        available[i] += allocation[processIndex][i];
        need[processIndex][i] = allocation[processIndex][i] = maximum[processIndex][i] = 0;
    }
}

bool testAllProcesses() {
    vector<bool> done(numberOfProcess, false);
    auto findProcess = [&]() {
        for (int i = 0; i < numberOfProcess; ++i) {
            if (done[i])
                continue;
            bool ok = true;
            for (int j = 0; j < numberOfResources; ++j) {
                ok &= available[j] >= need[i][j];
            }
            if (ok)
                return i;
        }
        return -1;
    };
    auto availableTemp = available;
    auto maximumTemp = maximum;
    auto needTemp = need;
    auto allocationTemp = allocation;
    int processIndex = findProcess();
    while (processIndex != -1) {
        done[processIndex] = true;
        cout << "P" << processIndex << endl;
        execProcess(processIndex);
        showCurrentState();
        processIndex = findProcess();
    }
    available = availableTemp;
    allocation = allocationTemp;
    maximum = maximumTemp;
    need = needTemp;
    for (int i = 0; i < numberOfProcess; ++i) {
        if (!done[i])
            return false;
    }
    return true;
}


bool request(int processIndex, vector<int> resources) {
    for (int i = 0; i < resources.size(); ++i) {
        available[i] -= resources[i];
        allocation[processIndex][i] += resources[i];
        need[processIndex][i] -= resources[i];
    }
    return testAllProcesses();
}

bool release(int processIndex, vector<int> resources) {
    bool ok = true;
    for (int i = 0; i < resources.size(); ++i) {
        ok &= allocation[processIndex][i] >= resources[i];
        allocation[processIndex][i] -= resources[i];
        available[i] += resources[i];
        need[processIndex][i] += resources[i];
    }
    if (!ok) {
        request(processIndex, resources);
        return false;
    } else
        return true;
}

bool executeCommand(string &command) {
    // RQ p1 2 4 2
    toLower(command);
    istringstream in(command);
    string first;
    in >> first;
    bool returnValue = false;
    if (first != "quit") {

        string process;
        int resource;
        in >> process;
        int processIndex = stoi(process.substr(1, process.size() - 1));
        vector<int> resources;
        while (in >> resource) {
            resources.push_back(resource);
        }

        if (first == "rq") {
            if (!request(processIndex, resources)) {
                release(processIndex, resources);
                returnValue = false;
            } else {
                returnValue = true;
            }
        } else if (first == "rl") {
            returnValue = release(processIndex, resources);
        }
    } else {
        exit(0);
    }
    showCurrentState();
    return returnValue;
}

bool readCommand() {
    string cmd;
    cin.ignore();
    getline(cin, cmd);
    return executeCommand(cmd);
}

int main() {
#ifndef ONLINE_JUDGE
    freopen("input.txt", "r", stdin);
    freopen("output.txt", "w", stdout);
#endif
    takeInitialInput();
    testAllProcesses();
    readCommand();
    return 0;
}