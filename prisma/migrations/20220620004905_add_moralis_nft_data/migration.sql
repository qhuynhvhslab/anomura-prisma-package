-- CreateTable
CREATE TABLE "MoralisNftData" (
    "id" SERIAL NOT NULL,
    "contractAddress" TEXT NOT NULL,
    "contractData" JSONB,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "MoralisNftData_pkey" PRIMARY KEY ("id")
);
