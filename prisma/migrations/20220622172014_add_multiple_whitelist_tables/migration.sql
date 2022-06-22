-- CreateTable
CREATE TABLE "TeamAddress" (
    "id" SERIAL NOT NULL,
    "wallet" TEXT NOT NULL,

    CONSTRAINT "TeamAddress_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "WhiteListAddress" (
    "id" SERIAL NOT NULL,
    "wallet" TEXT NOT NULL,

    CONSTRAINT "WhiteListAddress_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EarlyListAddress" (
    "id" SERIAL NOT NULL,
    "wallet" TEXT NOT NULL,

    CONSTRAINT "EarlyListAddress_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "TeamAddress_wallet_key" ON "TeamAddress"("wallet");

-- CreateIndex
CREATE UNIQUE INDEX "WhiteListAddress_wallet_key" ON "WhiteListAddress"("wallet");

-- CreateIndex
CREATE UNIQUE INDEX "EarlyListAddress_wallet_key" ON "EarlyListAddress"("wallet");
