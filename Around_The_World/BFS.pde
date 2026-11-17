int findDistance(int start, int end) {

  Queue<Integer> queue = new LinkedList<Integer>();

  int[] distance = new int[countryInts.length];

  // -1 betyder, at landet ikke er besøgt
  Arrays.fill(distance, -1);

  queue.add(start);
  distance[start] = 0;

  while (!queue.isEmpty()) {

    int now = queue.poll();

    if (now == end) {
      return distance[now];
    }

    for (int neighbor : countryInts[now]) {

      if (distance[neighbor] == -1) {

        distance[neighbor] = distance[now] + 1;

        queue.add(neighbor);
      }
    }
  }

  return -1;
}
