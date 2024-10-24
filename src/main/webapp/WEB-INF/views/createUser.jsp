<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>Create User</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-900 text-gray-300">
<div class="p-4 sm:ml-64">
  <div class="p-4 border-2 border-gray-700 border-dashed rounded-lg">
    <section class="px-11 m-auto">
      <h2 class="text-lg font-medium text-white">Create New User</h2>

      <form action="save" method="POST" class="mt-6 space-y-6">
        <div>
          <label class="block text-sm font-medium text-gray-300" >First Name</label>
          <input type="text" name="firstName" class="block w-full px-4 py-2 mt-1 text-gray-900 bg-gray-200 border-gray-700 rounded-lg" required />
        </div>

        <div>
          <label class="block text-sm font-medium text-gray-300" >Last Name</label>
          <input type="text" name="lastName" class="block w-full px-4 py-2 mt-1 text-gray-900 bg-gray-200 border-gray-700 rounded-lg" required />
        </div>

        <div>
          <label class="block text-sm font-medium text-gray-300" >Identification Document</label>
          <input type="text" name="identificationDocument" class="block w-full px-4 py-2 mt-1 text-gray-900 bg-gray-200 border-gray-700 rounded-lg" required />
        </div>

        <div>
          <label class="block text-sm font-medium text-gray-300">Nationality</label>
          <input type="text" name="nationality" class="block w-full px-4 py-2 mt-1 text-gray-900 bg-gray-200 border-gray-700 rounded-lg" required />
        </div>

        <div>
          <label class="block text-sm font-medium text-gray-300" >Registration Date</label>
          <input type="date" name="registrationDate" class="block w-full px-4 py-2 mt-1 text-gray-900 bg-gray-200 border-gray-700 rounded-lg" required />
        </div>

        <div>
          <label class="block text-sm font-medium text-gray-300" >Account Expiration Date</label>
          <input type="date" name="accountExpirationDate" class="block w-full px-4 py-2 mt-1 text-gray-900 bg-gray-200 border-gray-700 rounded-lg" required />
        </div>

        <div class="mt-4">
          <button type="submit" class="px-5 py-2.5 text-white bg-blue-700 hover:bg-blue-800 font-medium rounded-lg">
            Save
          </button>
        </div>
      </form>
    </section>
  </div>
</div>
</body>
</html>
