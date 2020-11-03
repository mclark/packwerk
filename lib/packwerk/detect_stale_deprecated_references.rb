# typed: true
# frozen_string_literal: true

require "packwerk/cache_deprecated_references"

module Packwerk
  class DetectStaleDeprecatedReferences < CacheDeprecatedReferences
    def stale_violations?
      @deprecated_references.any? do |_, deprecated_references_file|
        deprecated_references_file.stale_violations?
      end
    end
  end
end
