-- CreateTable
CREATE TABLE "NodeAllocation" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "nodeId" TEXT NOT NULL,
    "ipAddress" TEXT NOT NULL,
    "alias" TEXT,
    "ports" TEXT NOT NULL,
    "isActive" BOOLEAN NOT NULL DEFAULT true,
    "isPrimary" BOOLEAN NOT NULL DEFAULT false,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL,
    CONSTRAINT "NodeAllocation_nodeId_fkey" FOREIGN KEY ("nodeId") REFERENCES "Node" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "ServerAllocation" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "serverId" TEXT NOT NULL,
    "allocationId" TEXT NOT NULL,
    "port" INTEGER NOT NULL,
    "isPrimary" BOOLEAN NOT NULL DEFAULT true,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "ServerAllocation_serverId_fkey" FOREIGN KEY ("serverId") REFERENCES "Server" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "ServerAllocation_allocationId_fkey" FOREIGN KEY ("allocationId") REFERENCES "NodeAllocation" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "NodeAllocation_nodeId_ipAddress_ports_key" ON "NodeAllocation"("nodeId", "ipAddress", "ports");

-- CreateIndex
CREATE UNIQUE INDEX "ServerAllocation_serverId_allocationId_port_key" ON "ServerAllocation"("serverId", "allocationId", "port");
