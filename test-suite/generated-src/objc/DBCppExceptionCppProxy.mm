// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from exception.djinni

#import "DBCppExceptionCppProxy+Private.h"
#import "DBCppException.h"
#import "DBCppExceptionCppProxy+Private.h"
#import "DJIDate.h"
#import "DJIError.h"
#include <exception>
#include <utility>
#include <vector>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface DBCppExceptionCppProxy ()
@property (nonatomic, readonly) std::shared_ptr<djinni::DbxCppWrapperCache<CppException>> cache;
@end

@implementation DBCppExceptionCppProxy

- (id)initWithCpp:(const std::shared_ptr<CppException> &)cppRef cache:(const std::shared_ptr<djinni::DbxCppWrapperCache<CppException>> &)cache
{
    if (self = [super init]) {
        _cppRef = cppRef;
        _cache = cache;
    }
    return self;
}

- (void)dealloc
{
    _cache->remove(_cppRef);
}

+ (id)cppExceptionWithCpp:(const std::shared_ptr<CppException> &)cppRef
{
    const auto & cache = djinni::DbxCppWrapperCache<CppException>::getInstance();
    return cache->get(cppRef, [&] (const std::shared_ptr<CppException> & p) { return [[DBCppExceptionCppProxy alloc] initWithCpp:p cache:cache]; });
}

- (int32_t)throwAnException {
    try {
        int32_t cppRet = _cppRef->throw_an_exception();
        int32_t objcRet = cppRet;
        return objcRet;
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (id <DBCppException>)get {
    try {
        std::shared_ptr<CppException> cppRet = CppException::get();
        id <DBCppException> objcRet = [DBCppExceptionCppProxy cppExceptionWithCpp:cppRet];
        return objcRet;
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

@end
