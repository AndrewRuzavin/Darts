#include "SomeCode.hpp"
#include <gmock/gmock.h>
#include <QDebug>

TEST( Foo, fooIncrementInputValue ) {
	ASSERT_EQ( 3, foo( 2 ) );
}


class JustTest : public ::testing::Test {
	void SetUp() override {

	}

	void TearDown() override {
		std::cout << "-----------JustTest TearDown\n";
	}
};

TEST( AssertsTest, AssertFalse ) {
	ASSERT_FALSE( 1 == 2 );
}

TEST( AssertsTest, AssertTrue ) {
	ASSERT_TRUE( 2 == 2 );
}

TEST( ExpectTest, Eq ) {
	EXPECT_EQ( 1, 1 );
}

TEST_F( JustTest, EqInvalid ) {
	ASSERT_EQ( 1, 2 );
	std::cout << "-----------TEST( ExpectTest, EqInvalid ) : message after fatal run\n";
}

