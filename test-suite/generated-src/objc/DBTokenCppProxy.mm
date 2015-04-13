// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from token.djinni

#import "DBTokenCppProxy+Private.h"
#import "DBToken.h"
#import "DJIDate.h"
#import "DJIError.h"
#include <exception>
#include <utility>
#include <vector>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface DBTokenCppProxy ()
@property (nonatomic, readonly) std::shared_ptr<djinni::DbxCppWrapperCache<Token>> cache;
@end

@implementation DBTokenCppProxy

- (id)initWithCpp:(const std::shared_ptr<Token> &)cppRef cache:(const std::shared_ptr<djinni::DbxCppWrapperCache<Token>> &)cache
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

+ (id)tokenWithCpp:(const std::shared_ptr<Token> &)cppRef
{
    const auto & cache = djinni::DbxCppWrapperCache<Token>::getInstance();
    return cache->get(cppRef, [&] (const std::shared_ptr<Token> & p) { return [[DBTokenCppProxy alloc] initWithCpp:p cache:cache]; });
}

@end
