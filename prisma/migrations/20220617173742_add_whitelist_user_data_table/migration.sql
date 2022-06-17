-- CreateTable
CREATE TABLE "WhiteListUserData" (
    "id" SERIAL NOT NULL,
    "userId" TEXT NOT NULL,
    "data" JSONB,

    CONSTRAINT "WhiteListUserData_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "WhiteListUserData" ADD CONSTRAINT "WhiteListUserData_userId_fkey" FOREIGN KEY ("userId") REFERENCES "WhiteList"("userId") ON DELETE RESTRICT ON UPDATE CASCADE;
