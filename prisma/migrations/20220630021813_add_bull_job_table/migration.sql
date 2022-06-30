-- CreateTable
CREATE TABLE "BullJob" (
    "id" SERIAL NOT NULL,
    "jobId" TEXT NOT NULL,
    "state" TEXT NOT NULL,
    "progress" INTEGER,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "BullJob_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "BullJob_jobId_key" ON "BullJob"("jobId");
