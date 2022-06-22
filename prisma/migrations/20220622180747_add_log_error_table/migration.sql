-- CreateTable
CREATE TABLE "LogError" (
    "id" SERIAL NOT NULL,
    "url" TEXT NOT NULL,
    "referer" TEXT,
    "userAgent" TEXT,
    "message" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "LogError_pkey" PRIMARY KEY ("id")
);
