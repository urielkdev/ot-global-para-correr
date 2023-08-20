/**
 * Canary - A free and open-source MMORPG server emulator
 * Copyright (©) 2019-2022 OpenTibiaBR <opentibiabr@outlook.com>
 * Repository: https://github.com/opentibiabr/canary
 * License: https://github.com/opentibiabr/canary/blob/main/LICENSE
 * Contributors: https://github.com/opentibiabr/canary/graphs/contributors
 * Website: https://docs.opentibiabr.com/
 */

#ifndef SRC_PCH_HPP_
#define SRC_PCH_HPP_

// --------------------
// Internal Includes
// --------------------

// Utils
#include "utils/definitions.h"
#include "utils/simd.hpp"

// --------------------
// STL Includes
// --------------------

#include <bitset>
#include <charconv>
#include <filesystem>
#include <fstream>
#include <forward_list>
#include <list>
#include <map>
#include <queue>
#include <random>
#include <ranges>
#include <regex>
#include <set>
#include <vector>
#include <variant>

// --------------------
// System Includes
// --------------------

#ifdef _WIN32
	#include <io.h> // For _isatty() on Windows
	#define isatty _isatty
	#define STDIN_FILENO _fileno(stdin)
#else
	#include <unistd.h> // For isatty() on Linux and other POSIX systems
#endif

#ifdef OS_WINDOWS
	#include "conio.h"
#endif

// --------------------
// Third Party Includes
// --------------------

// ABSL
#include <absl/numeric/int128.h>

// ARGON2
#include <argon2.h>

// ASIO
#include <asio.hpp>

// CURL
#include <curl/curl.h>

// FMT
#include <fmt/chrono.h>

// GMP
#include <gmp.h>

// JSON
#include <json/json.h>

// LUA
#if __has_include("luajit/lua.hpp")
	#include <luajit/lua.hpp>
#else
	#include <lua.hpp>
#endif

// Magic Enum
#include <magic_enum.hpp>

// Memory Mapped File
#include <mio/mmap.hpp>

// MySQL
#if __has_include("<mysql.h>")
	#include <mysql.h>
#else
	#include <mysql/mysql.h>
#endif

#include <mysql/errmsg.h>

// Parallel Hash Map
#include <parallel_hashmap/phmap.h>

// PugiXML
#include <pugixml.hpp>

// SPDLog
#include <spdlog/spdlog.h>

// Zlib
#include <zlib.h>

// -------------------------
// GIT Metadata Includes
// -------------------------

#if __has_include("gitmetadata.h")
	#include "gitmetadata.h"
#endif

// ---------------------
// Standard STL Includes
// ---------------------

#include <string>
#include <iostream>

bool isDevMode();

#endif // SRC_PCH_HPP_
